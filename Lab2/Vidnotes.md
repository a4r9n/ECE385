# Test Bench:

allow simulate the design then debug in hardware

Problem:

simulation not always perfect

Idea: simulation is some code wraps around the top level, emulate the LED and switches on Urbana board, virtually press a button, see what happens

As a result: Test bench should be at the top level for simulation, because it wraps around the top in simulation

In Design: Test bench should not be at the top leve

Design is what goes into hw, test bench should not and cannot go into hardware(beacuse using non synthesizable portion of systemverilog)

what should be Top level of HW?

Processor0

