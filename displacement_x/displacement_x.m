clc
clear all
T = 0:10; %sec.
A = 4; %cm
w = 0.6; %rad/sec.
x = A.*cos(w.*T);
table(transpose(T),transpose(x))