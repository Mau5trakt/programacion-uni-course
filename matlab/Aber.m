%%% Programa para calcular el PRESION DE BURBUJA segun la ecuacion de MC-Williams %%%
% Grupo: 1
clear
clc

% DATOS DEL PROBLEMA
% Composiciones molares iguales de PROPANO(1), HEXANO(2) y OCTANO(3)
yi_Pe = 0.2;
yi_H = 0.4;
yi_O = 0.4;
% TEMPERATURA: 626.67 °R
T = 626.67; % °R
% La Temperatura estara dada en Rankine, segun Mc Williams

% CONSTANTES DE CADA COMPONENTE
% PROPANO 
aT1_Pe = -970688.5625;
aT2_Pe = 0;
aT6_Pe = 7.15059;
aP1_Pe = -0.76984;
aP2_Pe = 0;
aP3_Pe = 6.900;

% HEXANO
aT1_H = -1778.901;
aT2_H = 0;
aT6_H = 6.96783;
aP1_H = -0.84634;
aP2_H = 0;
aP3_H = 0;

% OCTANO
aT1_O = 0;
aT2_O = -7646.81641;
aT6_O = 12.48457;
aP1_O = -0.73152;
aP2_O = 0;
aP3_O = 0;

% Metodo Iterativo: Asumir una P, calcular cada k, y determinar la suma
% ki*yi la cual debe dar = 1

%P = 9:10:80; % Haciendo un estimado de las presiones
P = linspace(9,80,10);
suma = zeros(1,length(P));

for i = 1:length(P)

k_Pe = exp( aT1_Pe/(T^2) + aT2_Pe/(T) + aT6_Pe + aP1_Pe*log(P(i)) + aP2_Pe/(P(i)^2) + aP3_Pe/P(i));
k_H = exp( aT1_H/(T^2) + aT2_H/(T) + aT6_H + aP1_H*log(P(i)) + aP2_H/(P(i)^2) + aP3_H/P(i));
k_O = exp( aT1_O/(T^2) + aT2_O/(T) + aT6_O + aP1_O*log(P(i)) + aP2_O/(P(i)^2) + aP3_O/P(i));

suma(i) = yi_Pe*k_Pe + yi_H*k_H + yi_O*k_O;
end

pburbuja = interp1(1:length(suma), suma, 1, 'pchip');
fprintf('La Presion de burbuja para la mezcla  es de %6.2f  \n', pburbuja)
plot(P,suma,'m--h')
hold on 
grid on

