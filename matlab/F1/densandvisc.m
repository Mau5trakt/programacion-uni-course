%Calculo de la densidad y la viscosidad en funcion de la temperatura
% Kubz at @19-06-21
function [densidad,viscosidad]=densandvisc(T)
densidad = 1.6e-05*T.^3 + -0.005963*T.^2 + 0.02056*T + 1000;
viscosidad = (-2.717e-09*T.^3 + 6.052e-07*T.^2 + -4.822e-05*T + 0.00176)*1000;
end
%forma de mostrar en consola los dos resultados
%[variablea, variableb] = densandvisc(Temperatura)