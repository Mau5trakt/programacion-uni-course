%%% Programa para calcular el Punto de Rocío segun la ecuacion de Mark-Williams %%%
% Grupo: 3M2-IQ
%Integrantes: Daniela Lucìa Lòpez Espinoza, Ingris Tahiris Martinez
%Gutierrez, Mayte Medrano Brenes, Yubrank Renè Ràudez Gàmez
clear
clc

%%%%%%%%% DATOS DEL PROBLEMA %%%%%%%%%%
% Composiciones molares iguales de propano(1), iso-pentano(2) y hexano(3)
y_p = 1/3;
y_ip = 1/3;
y_h = 1/3;
% Presion del sistema: 55 psia
P = 55; % psia
% La temperatura estara dada en Rankine, segun Mark & Williams (1973)

%%%% Constantes encontradas para cada componente %%%%
% PROPANO 
aT1_p = -970688.5625;
aT2_p = 0;
aT6_p = 7.15059;
aP1_p = -0.76984;
aP2_p = 0;
aP3_p = 6.90224;

% ISOPENTANO
aT1_ip = -1481583;
aT2_ip = 0;
aT6_ip = 7.58071;
aP1_ip = -0.93159;
aP2_ip = 0;
aP3_ip = 0;

% HEXANO
aT1_h = -1778901;
aT2_h = 0;
aT6_h = 6.96783;
aP1_h = -0.84634;
aP2_h = 0;
aP3_h = 0;

% Metodo Iterativo: Asumir una T, calcular cada k, y determinar la suma
% yi/ki la cual debe dar = 1

T = 506:10:696; % Haciendo un estimado segun las temperaturas de ebullicion
suma = zeros(1,length(T));

for i = 1:length(T)

k_p = exp( aT1_p/(T(i)^2) + aT2_p/(T(i)) + aT6_p + aP1_p*log(P) + aP2_p/(P^2) + aP3_p/P);
k_ip = exp( aT1_ip/(T(i)^2) + aT2_ip/(T(i)) + aT6_ip + aP1_ip*log(P) + aP2_ip/(P^2) + aP3_ip/P);
k_h = exp( aT1_h/(T(i)^2) + aT2_h/(T(i)) + aT6_h + aP1_h*log(P) + aP2_h/(P^2) + aP3_h/P);

suma(i) = y_p/k_p + y_ip/k_ip + y_h/k_h;
end

plot(T,suma,'bo-')
% La temperatura esta entre los valores 636 y 646 R
% Haciendo una interpolacion cubica para obtener la mayor exactitud tenemos:
Trocio = interp1(suma,T,1,'pchip');    %pchip equivale a interpolacion cubica

fprintf('La Temperatura de Rocio para la mezcla equimolar de n-propano,isopentano \ny hexano a 55 psia es de %6.2f Rankine que equivale a %6.2f °F \n' ,Trocio,Trocio-458.67)


