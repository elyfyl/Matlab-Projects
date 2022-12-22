%% Values For Troposphere 
A= 0:250:15000;
T0=288.15; 
a=6.5*(1/1000);
T=T0-(a*A); 
R=287.053;
g=9.81;
P0= 1.01325* 10^5; 
D0=1.225;
D=D0*((1-(a*A/T0)).^((g/R*a))-1);
P=P0*((1-(a*A/T0)).^(g/R*a));
%% Density
subplot(3,2,1)
plot(A,D,'c-')
xlabel('Altitude [h(m)]')
ylabel('Density [kg/m^3]')
grid on
title("Troposohere")
%% Temperature
subplot(3,2,2)
plot(T,A,'k-')
xlabel('Altitude [h(m)]')
ylabel('Temperature [K]')
title("Troposphere")
grid on
%% Pressure
subplot(3,2,3)
plot(A,P,'m-')
xlabel('Altitude [h(m)]')
ylabel('Pressure [pascal]')
grid on
title("Troposphere")
%% Values For Tropopause
A2= 11000:300:23000;
g= 9.81;
R=287.053;
h11=11000;
p11= 22632;
d11=0.36;
T11=216.65;
T2= T11;
D2 = d11*(exp((-g) * (A2-h11)/(R*T11)));
P2= p11*(exp((-g) * (A2-h11)/(R*T11)));
%% Pressure
subplot(3,2,4)
plot(A2,P2,'m-')
xlabel('Altitude [h(m)]')
ylabel('Pressure [Pascal]')
grid on
title("Tropopause")
%% Density
subplot(3,2,5)
plot(A2,D2,'c-')
xlabel('Altitude [h(m)]')
ylabel('Density [kg/m^3]')
grid on
title("Tropopause")
%% Temperature
subplot(3,2,6)
plot(A2,T2,'o-')
xlabel('Altitude [h(m)]')
ylabel('Temperature [K]')
grid on
title("Tropopause")