#UNIDAD 2 - Ejercicio 1

pkg load symbolic

close all; clear all; clc;

syms R1 R2 C1 C2 S real

#funcion de transferencia del 1er circuito
disp("1er circuito")
g1 = 1 / ((S*R1*C1)+1)

#circuito 2

syms Vin I1 I2 real

#capacitores en domino operacional
Xc1 = 1/(S*C1);
Xc2 = 1/(S*C2);

#Ecuacuines de malla
eq1 = Vin==I1*(R1+Xc1)-I2*Xc1
eq2 = 0==I1*(-Xc1)+I2*(R2+Xc1+Xc2)

sol = solve([eq1, eq2], [I1, I2]);

I1sol = sol.I1;
I2sol = sol.I2;

Vout = I2sol*Xc2;

disp("2do circuito")
G = simplify((Vout/Vin))
#Podemos observar como si modifico R1 modifico 2 polos

#Circuito 3
#En este caso tenemos un mismo circuito pero con un buffer de por medio
#Esno nos faiclita las cosas porque tenemos 2 FT y por algrebra de bloques
#las multiplicamos porque estan en cascada

G31 = 1 / ((S*R1*C1)+1);
G32 = 1 / ((S*R2*C2)+1);

disp("3er circuito")
G3 = G31 * G32





