clear all
clc
angles=[0:pi/10:pi*2];
cosine=cos(angles);
disp("Cosines of Radians:");
fprintf("\n Angle Cosine\n\n")
table=[angles; cosine];
fprintf("%4.2f\t%4.2f\n",table);