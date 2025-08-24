pkg load control

#limpiar figuras abiertas, limpiar el workspace, limpia el comand wondows
close all; clear all; clc;

disp("hola mundo")

#variables que se muestran en consola y no se muestran
a = 5
b = 7.3;
c = a + b

#vectores inicio:paso:fin

t = 0: 0.001: 2*pi;

#graficar
x = 1.2*sin(2*t);
y = 0.8*cos(t);

#graficamos el vs (t,x) vs (t,y)
plot(t,x,t,y)
xlabel("t[seg]");
ylabel("amplitud");
title("Comparación de señales x(t) y y(t)");
legend("x(t)", "y(t)");


