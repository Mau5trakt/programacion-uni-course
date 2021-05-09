% Programa para calcular el punto de ebullicion del agua 
% a distintas temperaturas o Presiones
% Hecho por Enrique Mauricio Alemany Torres

T = input('Ingrese la temperatura en °C /n');
if 0 < T && T < 100
    A = 8.07131;
    B = 1730.63;
    C = 233.426;
elseif 100 <= T && T <= 374
    A = 8.14019;
    B = 1810.94;
    C = 244.485;
else 
    disp('Temperatura fuera de rango, ingrese una temperatura entre 0 y 374°C')
end

P = 10^(A-B/(T+C));
fprintf('La presión de ebullucion para T = %6.2f °C es de %6.3f bar',T,P)