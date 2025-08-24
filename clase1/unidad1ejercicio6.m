#UNIDAD N° 1 - Ejercicio 6
close all; clear all; clc;
#pkg load symbolic
#se carga una sola vez el paquete

#Encontrar las Transformadas de Laplace de las siguientes funciones

#variables simbolicas - real los hace trabajar como nros reales
syms t s alpha omeg real

#funcion 1
g1 = dirac(t);
G1 = laplace(g1);

#funcion 2
g2 = heaviside(t); #escalon
G2 = laplace(g2);

#funcion 3
g3 = exp(-2*t) * g2;
G3 = laplace(g3);

#funcion 4
g4 = 7 * exp(-5*t) * g2;
G4 = laplace(g4);

#funcion 5
g5 = (1+g3)*g2;
G5 = laplace(g5);

#funcion 6
g6 = (t * sin(2*t) + 3 * exp(-10*t) ) * g2;
G6 = laplace(g6);

#funcion 7
g7 = exp(-5*(t-2))*heaviside(t-2);
G7 = laplace(g7);

#funcion 8
g8 = exp(-alpha * t) * cos(omeg*t) * g2;
G8 = laplace(g8);
