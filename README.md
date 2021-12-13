# Automatic Clockgate Generator

## Required Packages:
[Pyverilog](https://github.com/PyHDI/Pyverilog)

## How To Run:
```
python3 project3.py <netlist>
```

For instance, to create a clock-gated netlist for the provided 32bit register test case:
```
 python3 project3.py tests/32bits/test_32bit.gl.v
```
This will generate the file `tests/32bits/test_32bit.gl.clockgate.v`



## Description

The program scans a netlist for pre-defined multiplexer templates that feed back a flipflop's output to itself. Once such a multiplexer is found, it is replaced with a clock gate and the multiplexer's data input is connected directly to the flip flop.

Multiplexer templates are divided into two main types: 

- **Single Cells**: These are cells that function as multiplexers on their own. (Ex: `sky130_fd_sc_hd__mux2_1`)
- **Multiple Cells**: These are cells that function as multiplexers in combination with other cells. 

### Cell Templates

This is a list of register and multiplexer cells/templates recognized by the script:

#### Registers:

- `sky130_fd_sc_hd__dfxtp_1`
- `sky130_fd_sc_hd__dfxtp_2`
- `sky130_fd_sc_hd__dfxtp_4`
- `sky130_fd_sc_hd__dfrtp_1`

#### Multiplexer (Single Cell):

 - `sky130_fd_sc_hd__mux2_1`

#### Multiple  (Multiple Cells):

- `sky130_fd_sc_hd__a21oi_1` combined with a `sky130_fd_sc_hd__nor2_1` (An Inverter is connected to the Data input here, as `a21oi` takes in inverted data)

### Algorithm

1. Search for all flipflops in the netlist and store them in a dictionary (marked by each flipflop's output wire)
2. Search for all single cell multiplexers. If one is found that has a flipflop's output wire as input, remove the mux and replace it with a clockgate, connecting the mux's data input directly to the flipflop. 
3. Search for the first cell in each multiple-cell multiplexer template. If one is found, search for the second cell, etc... until the last cell is found. If the last cell has an input wire that is a flipflop's output wire, remove all the cells associated with the current multiplexer and replace it with a clockgate, connecting the data input (and inverters if required) directly to the flipflop. 

#### Adding Clockgates 

Each clockgate is associated with an enable wire, and there is only one clockgate for each enable wire. When a mux is replaced with a clockgate, it is checked first if there exists a clockgate associated with the mux's enable. If it exists, simply connect the found clockgate to the clock of the flipflop. If no such clockgate is found,  create a new clockgate and associate it with the enable wire. A counter is kept for the number of flipflops connected to each clockgate. Depending on the value of this counter, the size of the clockgate varies in the following manner:

```latex
n <= 8: sky130_fd_sc_hd__dlclkp_1
n <= 16: sky130_fd_sc_hd__dlclkp_2
n > 16: sky130_fd_sc_hd__dlclkp_4
```

Where **n** is the number of load flipflops. 



## Using Different Standard Cell Libraries

To use a different library than Sky130, simply add the module names and ports of the clockgates, flipflops, single-cell muxs, multiple-cell muxs, and inverters to the following dictionaries in `project3.py`, respectively:

- `clock_gate`
- `registers`
- `muxs`
- `gatemux`
- `inv`

## Code Structure

```
├── project3.py 						(main file)
├── synthesis                           (contains files used for synthesis) 													
├── tests								
│   ├── 32bits				            (32bit test case)			
│   │    ├── test_32bit.v						
│   │    ├── test_32bit.tb.v							
│   │    ├── test_32bit.gl.v
│   │    ├── test_32bit.gl.clockgated.v				
│   ├── 16bits				            (16bit test case)			
│   │    ├── test_16bit.v						
│   │    ├── test_16bit.tb.v							
│   │    ├── test16_bit.gl.v
│   │    ├── test16_bit.gl.clockgated.v
│   ├── async_rst			            (test case with async reset)				
│   │    ├── test3.v						
│   │    ├── test3_tb.v							
│   │    ├── test3.gl.v
│   │    ├── test3.gl.clockgated.v       		
│   ├── test1			            (test case with a21oi)				
│   │    ├── test1.v						
│   │    ├── test1_tb.v							
│   │    ├── test1.gl.v
│   │    ├── test1.gl.clockgated.v       		
│   ├── test2			            (test case with 2 selectors)				
│   │    ├── test2.v						
│   │    ├── test2_tb.v							
│   │    ├── test2.gl.v
│   │    ├── test2.gl.clockgated.v       		
 							

```
