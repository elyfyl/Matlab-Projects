clc
clear all
x = 0:pi/100:20*pi;
y = x.*sin(x);
z = x.*cos(x);
figure(1)%%(a)
plot(x,y)
title('Figure-1')
grid on

figure(2)%%(b)
polar(x,y)
title('Figure-2')
grid on

figure(3) %%(c)
plot3(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
title('Figure-3')
grid on
