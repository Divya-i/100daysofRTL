# 100-days-of-rtl Challenge

## Day 02: Data Flow Modeling and Delays

Welcome back to Day 2 of the "100 Days of RTL Challenge"! Today, we'll delve into the world of data Flow modeling and explore its advantages over gate-level modeling for complex circuits.

### Data Flow Modeling: An Overview

When dealing with small circuits, gate-level modeling suffices due to the limited number of gates. However, connecting numerous gates becomes a challenge as circuits grow in complexity. To address this, we turn to data Flow modeling. This approach designs circuits based on the flow of data between registers.

### Key Points:

Continuous Assignments: These statements define how data flows continuously. The assignment statement starts with the keyword assign.
Target Signal Type: The left-hand side (LHS) variable in ongoing assignments must be of type wire. It can be a scalar or vector, but not a reg or any other data type.
Wire Data Type: Wire data types enable continuous value propagation, ensuring smooth data flow.

Data Flow Modeling: Delays

Regular Assignment Delay:
The delay value is specified after the keyword assign.

Implicit Continuous Delay:
Specify both delay and assignment on the net.

Net Declaration Delay:
A delay can be specified on the net when it is declared. These delays can be used in gate-level modeling.

On Day 2, I focused on:

- Designing and simulating basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.
- Observing the behavior of these logic gates across diverse input scenarios: 0, 1, x (unknown), and z (high-impedance)





