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
%P = 14.69:50:870.1; %se supone este rango de temperaturas
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





    k_propano = @(P) exp(at1_propano ./ (T.^2)  + at6_propano + ap1_propano * log(P) + ap3_propano ./ P);
    k_hexano = @(P) exp(at1_hexano ./ (T.^2) +   at6_hexano + ap1_hexano * log(P));
    k_octano = @(P) exp(at2_octano ./ (T) + at6_octano + ap1_octano * log(P));

    P = linspace(1,870.1,73);
    %P = linspace(9,80,10);
    k1 = k_propano(P);
    k2 = k_hexano(P);
    k3 = k_octano(P);
    xprop = y_propano./k1;
    xhexano = y_hexano./k2;
    xoctano = y_octano./ k3;
    suma = xprop + xhexano +xoctano;
plot(P, suma, 'm.:')
grid on
procio = interp1(1:length(suma), suma, 1, 'pchip');

fprintf('La Presion de Rocio para la mezcla  es de %6.2f  \n', procio)
