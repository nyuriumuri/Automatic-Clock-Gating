# Automatic Clockgate Generator

## Required Packages:
[Pyverilog](https://github.com/PyHDI/Pyverilog)

## How To Run:
```
python3 project3.py gatelist.v
```

For instance, to create a clock-gates netlist for the provided 32bit register test case:
```
 python3 project3.py tests/32bits/test_32bit.gl.v
 ```
This will generate the file `tests/32bits/test_32bit.gl.clockgate.v`

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