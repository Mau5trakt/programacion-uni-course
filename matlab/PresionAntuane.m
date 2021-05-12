% Programa para calcular el punto de ebullicion del agua 
% a distintas temperaturas o Presiones
% Hecho por Enrique Mauricio Alemany Torres Y NoisyB

T = input('Ingrese la temperatura en �C /n');
if 0 < T && T < 100
    A = 8.07131;
    B = 1730.63;
    C = 233.426;
elseif 100 <= T && T <= 374
    A = 8.14019;
    B = 1810.94;
    C = 244.485;
else 
    disp('Temperatura fuera de rango, ingrese una temperatura entre 0 y 374�C')
end

P = 10^(A-B/(T+C));
P = P/750.062;
fprintf('La presi�n de ebullucion para T = %6.2f �C es de %6.3f bar',T,P)
%% Grafica 
T1 = linspace(0,100,21); %%range of the plot
A = 8.07131; 
B = 1730.63;
C = 233.426;
P1 = 10.^(A-B./(T1 + C)); %idk 
P1 = P1/750.062;
plot(T1,P1,'bo-')

T2 = linspace(100,374,21); %%range of the plot
A = 8.14019;
B = 1810.94;
C = 244.485;
P2 = 10.^(A-B./(T2 + C)); %idk 
P2 = P2/750.062;

semilogy(T,P,'kx','MarkerSize',4,'LineWidth',3)
hold on
%plot(T1,P1,'bo-', T2,P2, 'rs-')
semilogy(T1,P1,'bo-', T2,P2, 'rs-') %graficar en escala semilogaritmica en y 