# RTL-Day-15-JK-Master-Slave-Flip-Flop

### Master-Slave JK Flip Flop
A master-slave flip flop is created by connecting two JK flip flops in a series configuration where one acts as the master and the other as the slave. The inputs of the slave are connected to the outputs of the master flip flop, while the inputs of the master are fed back by the outputs of the slave. 

#### Block Diagram:
![image](https://github.com/tusharshenoy/RTL-Day-15-JK-Master-Slave-Flip-Flop/assets/107348474/459bcec6-7ce8-4f99-b089-ac94cf1599b1)

#### Working:
1. When the clock pulse goes high (CP = 1), the slave is isolated, and the J and K inputs may affect the state of the system.
2. The master flip flop responds first, as it is positive level triggered, while the slave flip flop responds later, being negative level triggered.
3. Depending on the input values J and K:
   - If J = 0 and K = 1, the high Q' output of the master goes to the K input of the slave, causing the slave to reset.
   - If J = 1 and K = 0, the high Q output of the master goes to the J input of the slave, setting the slave.
   - If J = 1 and K = 1, the flip-flop toggles on the positive transition of the clock.
   - If J = 0 and K = 0, the flip flop is disabled, and Q remains unchanged.
4. Timing diagram:
   - When the clock pulse is high, the output of the master is high, and vice versa.
   - Toggling occurs during each clock cycle, with the slave only operational when the clock is low.

![image](https://github.com/tusharshenoy/RTL-Day-15-JK-Master-Slave-Flip-Flop/assets/107348474/13df15e5-272a-4b8a-9c24-f47de565d2cf)


#### Simulation Output:
![image](https://github.com/tusharshenoy/RTL-Day-15-JK-Master-Slave-Flip-Flop/assets/107348474/0f9a8130-c722-42d3-8ff4-8a8c1ebd145f)

### References:-

[Master Slave JK Flip Flop](https://www.geeksforgeeks.org/master-slave-jk-flip-flop/)
