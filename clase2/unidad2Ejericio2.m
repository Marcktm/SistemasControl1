#Álgebra de Bloques
#2) Obtener la Función de Transferencia de los siguientes sistemas utilizando el álgebra
#de bloques. Simular la respuesta al escalón.
#Sistema 1: Sistema a lazo cerrado con realimentación tacométrica

close all; clear all; clc;

pkg load symbolic
pkg load control

S = tf('S');

G1 = minreal(53*(S+1)/((S+10)*(S+100)));

Kd = 16;

#Obtenemos la priemra retroalimentacion y nos queda todo esto en cascada con el resto
G1rKd = minreal(feedback(G1, Kd));

Kp = 31;
G2 = 1/S;

Gcasc = minreal(G1rKd*Kp*G2);

#Retroalimentacion fina y respuesta al escalon
GFinal = minreal(feedback(Gcasc, 1))

step(GFinal)



