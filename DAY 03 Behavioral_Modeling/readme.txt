## 100-days-of-rtl Challenge

### Day 03: Behavioral Modeling 

Welcome back to Day 3 of the "100 Days of RTL Challenge"! Today I'll be exploring behavioral modeling.
### Behavioral Modeling for Complex Circuits

While we've mastered basic logic gates, real-world digital systems often require sequential logic, such as a flip-flop. In behavioral modeling, we can seamlessly integrate these components and simulate their behavior to ensure proper functionality.

### Key Points:
Key Points:
Structured Procedures: Behavioral modeling employs two types of structured procedures: "always" and "initial" blocks. These blocks provide a framework to define how circuits behave over time.

Procedural Statements: Understanding the distinction between blocking and non-blocking procedural statements is crucial. Blocking statements execute in sequential order, while non-blocking statements simulate concurrent behavior.

Timing Control: Behavioral modeling includes control over timing elements. This involves concepts such as:

Regular Delay: In this case, the delay is specified to the left of the assignment, and the execution of the procedural assignment is delayed by the number specified by the delay control.
Intra-Assignment Delay: Rather than specifying the delay on the left side of the assignment, we can assign the delay on the right side of the assignment operator. By doing this, it alters the flow of activity in a different manner.
Zero Delay: We actually can't determine the order of execution of these statements in different always and initial blocks. In this zero-delay method, it ensures that a statement is executed last.

On Day 2, 
Designing and simulating basic logic gates: AND, OR, NOT, NAND, NOR, XOR, and XNOR.
Observing the behavior of these logic gates across diverse input scenarios: 0, 1, x (unknown), and z (high-impedance) The same behavior was observed for both dataflow modeling and gate-level modeling.




