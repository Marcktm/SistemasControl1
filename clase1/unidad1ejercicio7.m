#UNIDAD N° 1 - Ejercicio 7
close all; clear all; clc;
pkg load symbolic
pkg load control
#se carga una sola vez el paquete

syms s t real

#antitransformada

#function 1
G1 = 2/(s+3);
g1 = ilaplace(G1);

#function 2
G2 = 1/(s*(s+2)*(s+3));
g2 = ilaplace(G2);

#EJERCICIO 7
#son las mismas fnciones usar teorema de valor final
#vamos a ver de un vistazo el valor final de nuestra fucnion
#vemos el valor de regimen cuando apsa el transitorio
#podemos usa "tf" para escribir funciones de tranferencia
#tf(NUM,DEM) -> [a*s^n + b*s^n-1 ...] polinomios

G1f = tf(2,[1 3]);

#Graficamos valor de regimen de la funcion de trenferencia
#solo simula 10 segundo lo podemos cambiar creo la variable tfinal
#recordar que step te mete un escalon a la entrada para ver la FT y su comportamiento plot no lo hace 
tfinal = 20;
#step(G1f, tfinal);
#si queremos ver la respuesta a una entrada tipo rampa usamo ramp
ramp(G1f, tfinal);

#otra forma de escribir la FT
#zpk([polinomio con los ceros],[polinomio con los polos],[ganacia])

G1p = zpk([],[-3],[2])

#otra manera mas agredable de escribir es
#s = tf('s') esto no es una variable simbolica
#y escribimos de froma tradicional

S = tf('S')
G1pp = 2/(S+3)

disp("terminado")

