% Realice un algoritmo en MATLAB (versión 2015) para los siguientes
% ejercicios, utilizando la versión
%analítica del monograma de Depriester (Ecuación McWilliams). Subirlo a la
%plataforma nombrado: CP15-
% letraejercicio:
%   Integrantes:
%   ALEMANY TORRES ENRIQUE MAURICIO
%   BAEZ BAEZ LUIS FERNANDO
%   BRENES HERNANDEZ KATERINE RENEE
%   TÉLLEZ BEATRIZ ALEJANDRA
clear
clc
fprintf('A. Determinar la presión de burbuja y composición del vapor \n')
fprintf('en equilibrio  con una solución líquida 20/100 molar de propano, \n 40/100 molar de hexano y 40/100 molar de octano a 75°C.\n')
%se pone el porcentaje de la forma n/100 ya que el símbolo de porcentaje lo
%reconoce como comentario en una string.
%datos del ejercicio
y_propano = 0.2;
y_hexano = 0.4;
y_octano = 0.4;
T = 626.67; %rankine
P = 1:1:7; %se supone este rango de temperaturas
% Constantes propano
at1_propano = -970688.5625;
at2_propano = 0;
at6_propano = 7.15059;
ap1_propano = -0.76984;
ap2_propano = 0;
ap3_propano = 6.900;

% constantes hexano
at1_hexano = -1778.901;
at2_hexano = 0;
at6_hexano = 6.96783;
ap1_hexano = -0.84634;
ap2_hexano = 0;
ap3_hexano = 0;

%contantes octano
at1_octano = 0;
at2_octano = -7646.81641;
at6_octano = 12.48457;
ap1_octano = -0.73152;
ap2_octano = 0;
ap3_octano = 0;

suma = zeros(1, length(P));

for i = 1:length(P)
    k_propano = exp(at1_propano ./ (T.^2) + at2_propano ./ (T) + at6_propano + ap1_propano * log(P) + ap2_propano ./ (P.^2) + ap3_propano) / P;
    k_hexano = exp(at1_hexano ./ (T.^2) + at2_hexano ./ (T) + at6_hexano + ap1_hexano * log(P) + ap2_hexano ./ (P.^2) + ap3_hexano) / P;
    k_octano = exp(at1_octano ./ (T.^2) + at2_octano ./ (T) + at6_octano + ap1_octano * log(P) + ap2_octano ./ (P.^2) + ap3_octano) / P;

    suma(i) = y_propano / k_propano + y_hexano / k_hexano + y_octano / k_octano;
end

plot(P, suma, 'bo-')

pburbuja = interp1(1:length(suma), suma, 1, 'pchip');

fprintf('La Presion de burbuja para la mezcla  es de %6.2f  \n', pburbuja)
