# 100-days-of-rtl Challenge

## Day 02: Data Flow Modeling and Delays

Welcome back to Day 2 of the "100 Days of RTL Challenge"! Today, we'll delve into the world of **Data Flow Modeling** and explore its advantages over gate-level modeling for complex circuits.

### Data Flow Modeling: An Overview

When dealing with small circuits, gate-level modeling suffices due to the limited number of gates. However, as circuits grow in complexity, connecting numerous gates becomes a challenge. To address this, we turn to **Data Flow Modeling**. This approach designs circuits based on the flow of data between registers.

### Key Points:

Continuous Assignments: Central to data flow modeling, these statements define how data flows continuously.
Target Signal Type: The left-hand side (LHS) variable in continuous assignments must be of type wire. It can be a scalar or vector wire but not a reg or any other data type.
Wire Data Type: Wire data types are employed to enable continuous value propagation, ensuring smooth data flow.

Data Flow Modeling: Delays

Regular Assignment Delay:
Timing delays are linked with regular signal assignments.

Implicit Continuous Delay:
Delay factors involved in implicit continuous assignments.

Net Declaration Delay:
Delays connected to the declaration of nets in your designs.


On Day 2, we'll be focusing on:

- Designing and simulating basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.
- Observing the behavior of these logic gates across diverse input scenarios: 0, 1, x (unknown), and z (high-impedance)



---

