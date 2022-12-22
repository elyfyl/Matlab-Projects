clc
clear all

% Describe the values:
R=100; % Ω
C=0.01; % F
L=0.1; % H
f = linspace(1,1000,1000);
w = (2.*pi.*f);

% Vin = cos(w.*t);
Vin_phasor = [1 0];
 
% Impedances:
Zc=1./(j.*w.*C);
Zl=(j.*w.*L); 
Zl_phasor_magnitude=(abs(Zl));
Zl_phasor_angle=(atan2d(imag(Zl),real(Zl)));
Ztotal=Zc+Zl+R;
Ztotal_phasor_magnitude=(abs(Ztotal));
Ztotal_phasor_angle=(atan2d(imag(Ztotal),real(Ztotal)));
 
% i_phasor = Vin_phasor/Ztotal_phasor separated the real and imaginary parts 
i_phasor_magnitude=[Vin_phasor(1)./Ztotal_phasor_magnitude];
i_phasor_angle=[Vin_phasor(2)-Ztotal_phasor_angle];

% finding the Vout while the real and imaginary parts are seperated
Vout_phasor_magnitude = [i_phasor_magnitude.*Zl_phasor_magnitude];
Vout_angle = [i_phasor_angle+Zl_phasor_angle]; 

% H_phasor=Vout_phasor/Vin_phasor
H_phasor_magnitude = [Vout_phasor_magnitude./Vin_phasor(1)];
H_phasor_angle = [Vout_angle-Vin_phasor(2)];

% Plotting the values
subplot(2,1,1)
semilogx(w/(2*pi), 20*log10(H_phasor_magnitude))
xlabel("Hz")
ylabel("Gain, dB")
title("Bode plot")
subplot(2,1,2)
semilogx(w/(2*pi), H_phasor_angle)
xlabel("Hz")
ylabel("Phase, deg")