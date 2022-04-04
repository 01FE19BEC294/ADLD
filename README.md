# ADLD
# 01fe19bec294/Prathamesh S Rane / E div
## GCD
### gcd algorithm implementation
## Design
implementation of gcd using comparator
if(a>b) 
 a =a-b
else if(a<b)
 b = b-a
 else
  gcd =b
### Architecture
![My Image](https://github.com/01FE19BEC294/demo/blob/master/architecture%20of%20gcd.png)

## Pipelining
### Design

Design of 3-stage pipelined arithmetic unit which calculated addition substraction and multiplication in respective stages,in first stage it calculated x1 = a+b and x2 = c-d and in second stage it calculates y = x1+x2 and last stage gives output z which is z = yxd.
### Architecture
![My Image](https://github.com/01FE19BEC294/demo/blob/master/Pipelining%20architecture.png)
### Waveform
![My image](https://github.com/01FE19BEC294/demo/blob/master/pipelining%20waveform.png)

## Smart Parking

Smart Parking module .
### Design
The entry sensor senses if any car is available near gate for parking if so it will intimate the user to enter password .
This takes exit and entry sensor data as input when entry sensor detetcs car at door then it asks for password when matches then it opens the door else it asks for password and fills the space when exit sensor detects car then it opens the door and vacant one pace from memory for other cars to fill if required.

### Waveform
![my image](https://github.com/01FE19BEC294/demo/blob/master/smart_p.png)

## Vending Machine

Vending Machine design.
### Design

Design of vending machine which has only access to Rs.5,10 and 20 and keeps a count of current total money ,other inputs are refund and return refund of money will be granted when user asks for refund and return allows user to get back their change money. To get soda Rs.55 has to be completed Rs.70 for water ,beep signal is generated when someone tries to get soda/water before completing desired amount.
### Architecture
![image](https://user-images.githubusercontent.com/60054998/161606351-2e02700f-e5d7-4d9a-b8ea-912b4af2b7e2.png)
### waveform
![image](https://user-images.githubusercontent.com/60054998/161606627-56a99e38-eaf3-481f-9de2-198236dc2cd4.png)


## Sequence Detector

FSM Design of Sequence Detector.
 ### Design

This design detects the sequence 1011 consists of 5 states,first state is idle which when detects 1 then goes to state2 else remains in state1 ,state2 goes to state3 when detects 0 else remains in itself ,state3 goes to state4 when detetcs 1 else goes to state1 and state4 goes to state5 when detetcs 1 else goes to state3 and state5 goes to state1 when input is 1 else in state3.
### Architecture
![image](https://user-images.githubusercontent.com/60054998/161606996-fb1234d4-0cca-41f0-af41-ac771f0de52f.png)
### waveform
![image](https://user-images.githubusercontent.com/60054998/161607132-6c7d4cfb-bf4f-43cd-b56e-bf33687dc75c.png)

