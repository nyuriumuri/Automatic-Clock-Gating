import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
from pprint import pprint as pp
import argparse

argparser = argparse.ArgumentParser(description='Automatic Clock Gate Generator for Verilog')
argparser.add_argument('filepath')
line_args = argparser.parse_args()
rtl = line_args.filepath
ast,_ = parse([rtl])

# print("_______________________________________________-")
# get the root node of the tree (Description)
desc = ast.description
# get the ModuleDef node
definition = desc.definitions[0]
clk_port = "clk"

clock_gate = {
    "module": "sky130_fd_sc_hd__dlclkp",
    "name": "__clk_gate_",
    "ports": {
        "EN": "GATE",
        "CLK": "CLK",
        "OUT" : "GCLK",
    },
}

gclk_instances = 0
gclk_output = "__clk_gate_out_"

registers = {
    "sky130_fd_sc_hd__dfxtp_1":{
        "CLK" : "CLK",
        "D" : "D",
        "Q": "Q",
    },

    "sky130_fd_sc_hd__dfxtp_2":{
        "CLK" : "CLK",
        "D" : "D",
        "Q": "Q",
    },

    "sky130_fd_sc_hd__dfxtp_4":{
        "CLK" : "CLK",
        "D" : "D",
        "Q": "Q",
    },
    "sky130_fd_sc_hd__dfrtp_1":{
        "CLK" : "CLK",
        "D" : "D",
        "Q": "Q",
    }

}

muxs = {
    "sky130_fd_sc_hd__mux2_1" :{
        "A" : "A0",
        "B" : "A1",
        "Y" : "X",
        "S" : "S",
    },


}


inv = {
    "num": 0,
    "name": "_inv_",
    "wire": "_inv_wire_",
    "module": "sky130_fd_sc_hd__inv", 
    "Y": "Y",
    "X": "A"


}

gatemux = [
    {
            "sky130_fd_sc_hd__a21oi_1" :{
            "A": "A1",
            "B": "A2",
            "C": "B1",
            "Y": "Y"
        }
    },

    {
          "sky130_fd_sc_hd__nor2_1": {
                "A": "A",
                "B": "B",
                "Y": "Y"
          }
  
    }
]

found_regs = {

}

generated_gclks ={

}

def getGCLK(s):                                                 # gets the clockgate associated with a specific select line
    # print("CALLED getCLK")
    if s not in generated_gclks:
        global gclk_instances
        wire_name = gclk_output+"_"+str(gclk_instances)+"_"
        gate_wire = vast.Wire(wire_name)
        gate_name = clock_gate["name"]+str(gclk_instances)
        args = [
                    vast.PortArg(clock_gate["ports"]["OUT"], vast.Identifier(wire_name)),
                    vast.PortArg(clock_gate["ports"]["EN"], s),
                    vast.PortArg(clock_gate["ports"]["CLK"], vast.Identifier(clk_port))
                ]
        gate_instance = vast.Instance(
                clock_gate["module"],
                gate_name,
                tuple(args),
                tuple()

                )
        gclk_instances+=1
        items.append(gate_wire)
        generated_gclks[s] = {
            "count" : 1,
            "wire" : wire_name,
            "instance" : gate_instance
        }
    else:
        wire_name = generated_gclks[s]["wire"]
        generated_gclks[s]["count"]+=1
    return wire_name

def appendGCLKs():
    for gclk in generated_gclks:                    # checks the number of loads connected to the clockgate and sizes it accordingly
        if generated_gclks[gclk]["count"]<=8:
            generated_gclks[gclk]["instance"].module = clock_gate["module"]+"_1"
        elif generated_gclks[gclk]["count"]<=16:
            generated_gclks[gclk]["instance"].module = clock_gate["module"]+"_2"
        else:
            generated_gclks[gclk]["instance"].module = clock_gate["module"]+"_4"
        items.append(vast.InstanceList(generated_gclks[gclk]["instance"].module,tuple(),tuple([generated_gclks[gclk]["instance"]])))


def getInstanceLists():                         # gets all instantiated modules from the verilog file
    instances =[] 
    items = []
    for defitem in definition.items:
        if isinstance(defitem, vast.InstanceList):
            instances.append(defitem)
        else:
            items.append(defitem)
    return instances, items

instances, items = getInstanceLists();

for list in instances:                              # searches for all registers in the file
    if list.module in registers:
        reg = registers[list.module]
        instance  = list.instances[0]
        output_port = ""
        for port in instance.portlist:
            # print(port.portname, port.argname)
            if port.portname == reg["Q"]:
                output_port = port.argname
                found_regs[output_port] = list 

# pp(found_regs)
for list in instances:                          # checks if a multiplexer's input is fed back to a multiplexer and adds a clockgate accordingly
    if list.module in muxs:
        # print(list.module)
        mux = muxs[list.module]
        instance  = list.instances[0]
        a = None
        b = None 
        s  = None
        for port in instance.portlist:
            if port.portname == mux["A"]:
               a = port.argname
            if port.portname == mux["B"]:
                b = port.argname
            if port.portname == mux["S"]:
                s = port.argname 
       
        if a in found_regs or b in found_regs:
            wire_name = getGCLK(s)
                
            d =""
            reg = None
            if b in found_regs:
                d= a
                reg = found_regs[b].instances[0]
            else:
                d= b 
                reg = found_regs[a].instances[0]
            
           
            
            for port in reg.portlist: 
                if port.portname == registers[reg.module]["D"]:
                    port.argname = d
                if port.portname == registers[reg.module]["CLK"]:
                    port.argname = vast.Identifier(wire_name)
            
            continue 
    if list.module not in  registers:
        items.append(list)


for list in instances:
    if list.module in gatemux[0]:         # look for a21oi
        # pp(list.instances)
        instance = list.instances[0]
        mod = gatemux[0][list.module]
        c = a = y = b = None
        for port in instance.portlist:
            if port.portname == mod["C"]:
                c = port.argname
            if port.portname == mod["A"]:
                s = port.argname
            if port.portname == mod["Y"]:
                y = port.argname
            if port.portname == mod["B"]:       # the inverted D of the flipflop
                b = port.argname


        for list2 in instances:             # check if a NOR gate is connected to one of a20i's inputs
                if list2.module in gatemux[1]:
                    instance2 = list2.instances[0]
                    mod2 = gatemux[1][list2.module]
                    y2 = a2 =b2 = None
                    for port in instance2.portlist:         
                        if port.portname == mod2["A"]:
                            a2 = port.argname
                        if port.portname == mod2["B"]:
                            b2 = port.argname
                        if port.portname == mod2["Y"]:
                            y2 = port.argname
                    wire_name = ""
                    if y2 == c:           # check if one of the NOR gate inputs is the enable, if yes, generate a clock gate
                        wire_name = getGCLK(s) 
                        q = a2
                        if a2 == s:
                            q = b2    

                        inv_wire = inv["wire"]+"_"+str(inv["num"])+"_"              #create an inverter and connect it to the input of the register
                        inv_name = inv["name"]+"_"+str(inv["num"])+"_"
                        inv["num"]+=1
                        reg = found_regs[q].instances[0]
                        args = [
                                        vast.PortArg(inv["Y"], vast.Identifier(inv_wire)),
                                        vast.PortArg(inv["X"], b),
        
                                    ]
                        inv_instance = vast.Instance(
                            inv["module"],
                            inv_name,
                            tuple(args),
                            tuple(),
                        )
                        items.append(vast.Wire(inv_wire))
                        items.append(vast.InstanceList(inv["module"],tuple(),tuple([inv_instance]))) 

                        for port in reg.portlist: 
                            if port.portname == registers[reg.module]["D"]:
                                port.argname = vast.Identifier(inv_wire)
                            if port.portname == registers[reg.module]["CLK"]:
                                port.argname = vast.Identifier(wire_name)
                        items.remove(list)
                        items.remove(list2)
                        break 

                            

appendGCLKs()    # adds clockgates to the rtl   

for reg in found_regs.values():
    items.append(reg)


# pp(items)

definition.items = tuple(items)
# ast.show()
codegen = ASTCodeGenerator()
rslt = codegen.visit(ast)
f = open(rtl[:-2]+".clockgate.v", "w+")
f.write(rslt)
f.close()


