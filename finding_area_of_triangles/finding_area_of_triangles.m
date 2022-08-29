clc
clear all
b = 0:10; %m
h = 2:6; %m
[b_new h_new] = meshgrid(b,h);
A = (b_new.*h_new)./2 %m