clc
clear all

% Describe the resistors, inductor and capacitor values:
R1=1; % Ω
R2=1; % Ω
R3=1; % Ω
L=1; % H
C=1; % F

w = input("Enter a 'w' value:");
 if w == 1
 t = 0:0.01:15;
 end
 if w == 5
 t = 0:0.04:4;
 end
 if w == 100
 t = 0:0.0015:0.15;
 end

Vin=cos(w*t);

% Impedances
z1=R1; % Ω
z2=R2+1/(j*w*C); % Ω
z3=R3+(j*w*L); % Ω
ztotal=z1+((z2*z3)/(z2+z3)); % Ω

% Main current and Va is the voltage at node a
i=Vin./ztotal; % =(0.5).*(cos(w*t))
i_phasor=[0.5 0];
Va=Vin-(i*R1); % =(0.5).*(cos(w*t))"
Va_phasor=[0.5 0];

% Capacitor impedance and the current at capacitor 
Cimp_phasor=[sqrt(1+(1/w^(2))) atan2d((-1/w),(1))];
ic_phasor=[Va_phasor(1)./Cimp_phasor(1) Va_phasor(2) - Cimp_phasor(2)];
Zc=-j/w;
Zc_phasor=[abs(Zc) atan2d((-1/w),(0))];
Vout_phasor=[ic_phasor(1)*Zc_phasor(1) ic_phasor(2) + Zc_phasor(2)];
Vout_t=Vout_phasor(1)*(cos(w*t + Vout_phasor(2)));

% Plotting the values
plot(t,Vin,t,Vout_t)
xlabel('Time(t)')
ylabel('Voltages(V)')
legend('Vin','Vout')
grid on
disp("Vout's angle of phasor :" + Vout_phasor(2))