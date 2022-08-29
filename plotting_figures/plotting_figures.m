clc
clear all
close all

x = -5:0.5:5;
y = -5:0.5:5;
[X,Y] = meshgrid(x,y);
Z = sin((X.^2 + Y.^2).^(1/2));

figure(1) %%(a)
mesh(Z)
title('Mesh Plot')
xlabel('x')
ylabel('y')
zlabel('z')

figure(2) %%(b)
surf(Z)
title('Surf Plot')
xlabel('x')
ylabel('y')
zlabel('z')

figure(3) %%(c)
surf(Z)
title ('Surface Plot')
shading interp
colormap (winter)
xlabel('x')
ylabel('y')
zlabel('z')

figure(4) %%(d)
[C h] = contour (Z, 'ShowText', 'on')
clabel(C, h)
title ('Contour Plot')
xlabel('x')
ylabel('y')
zlabel('z')

figure(5) %%e
surfc(Z)
title('Contour and Surface Plot')
xlabel('x')
ylabel('y')
zlabel('z')

%%(f)
subplot(3,2,1)
surf(Z)
title ('Surface Plot')
xlabel('x')
ylabel('y')
zlabel('z')

subplot(3,2,2)
contour (Z, 'ShowText','off')
title('Contour Plot')
xlabel('x')
ylabel('y')
zlabel('z')

subplot(3,2,3)
surf(Z)
title ('Surface Plot with Shading')
shading interp
colormap (white)
xlabel('x')
ylabel('y')
zlabel('z')

subplot(3,2,4)
mesh (Z)
title('Mesh Plot')
xlabel('x')
ylabel('y')
zlabel('z')

subplot(3,2,5)
surfc(Z)
title ('Contour and Surface Plot Combination')
shading interp
colormap (summer)
xlabel('x')
ylabel('y')
zlabel('z')