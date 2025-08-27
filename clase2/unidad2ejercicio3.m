
close all; clear all; clc;

pkg load symbolic
pkg load control

S = tf('S');

#primer lazo cerrado
P = 12;
G1 = 27/(S+200);

G1Plc = feedback((G1*P),1)

#lazo abierto

PI = (S+0.1)/S;
G2 = 5/(S+0.1);

Gla = minreal(PI*G1Plc*G2)

GFinal = feedback(Gla,1)

step(GFinal)




 