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
fprintf('A. Determinar la presión de burbuja y composición del vapor \n')
fprintf('en equilibrio  con una solución líquida 20/100 molar de propano, \n 40/100 molar de hexano y 40/100 molar de octano a 75°C.\n') 
%se pone el porcentaje de la forma n/100 ya que el símbolo de porcentaje lo
%reconoce como comentario en una string.
%datos del ejercicio 
t = 626.67; %rankine
p = 7.34797; 
% Constantes propano
at1_propano = -970688.5625;%menos
at2_propano = 0;
at6_propano = 7.15059;
ap1_propano = -0.76984;%menos
ap2_propano = 0;
ap3_propano = 6.900;
z = (log(p)+(ap2_propano/p^2)+(ap3_propano/p));
kpropano = exp((at1_propano/t^2)+(at2_propano/t)+(at6_propano)*(z));
disp(kpropano);
fprintf('el k para el propano es: %f',kpropano)
% constantes hexano
at1_hexano = -1778.901;
at2_hexano = 0;
at6_hexano = 6.96783;
ap1_hexano = -0.84634;
ap2_hexano = 0;
ap3_hexano = 0;
x = (log(p)+(ap2_hexano/p^2)+(ap3_hexano/p));
kpropano = exp((at1_propano/t^2)+(at2_propano/t)+(at6_propano)*x);
%contantes octano
at1_octano = 0;
at2_octano = -7646.81641;
at6_octano = 12.48457;
ap1_octano = -0.73152;
ap2_octano = 0;
ap3_octano = 0;
%determinando los distintos k 