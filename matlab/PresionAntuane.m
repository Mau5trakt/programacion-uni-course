% Programa para calcular el punto de ebullicion del agua 
% a distintas temperaturas o Presiones
% Hecho por Elena, Marcio y Enrique :D
clc
opcion= input ('Desea calcular la presion (P) o la temperatura (T) \n');
switch opcion 
    case 'P'
    T = input('Ingrese la temperatura en ?C \n');
    if 0 < T && T < 100
        A = 8.07131;
        B = 1730.63;
        C = 233.426;
    elseif 100 <= T && T <= 374
        A = 8.14019;
        B = 1810.94;
        C = 244.485;
    else 
        disp('Temperatura fuera de rango, ingrese una temperatura entre 0 y 374?C')
    end

    P = 10^(A-B/(T+C));
    P = P/750.062;
    fprintf('La presi?n de ebullucion para T = %6.2f ?C es de %6.3f bar',T,P)
    
    case 'T'
        P = input('Ingrese la presion en bar \n');
        P = P/(1.01325/760); % conversion de bar mmHg
     if 4.89 <= P && P<= 162991
            A = 8.07131;
            B = 1730.63;
            C = 233.426;
        elseif 460.086 <= P && P <= 162991
            A = 8.14019;
            B = 1810.94;
            C = 244.485;
     else 
         error('Presion Fuera de Rango, ingrese un valor entre 0.006521 y 217.3 bar \n')
     end 
end
     %Calculo de temperatura de Ebullicion del Agua
     T= (B/(A-log10(P)))-C;
     % Resultados 
     P= P*(1.01325/760); %Conversion de mmHg a bar
     fprintf ('La temperatura de ebullicion del agua al %6.4rf bar es de %5.2f oc', P, T)
     
            
            
        
    
    %% Grafica 
    clf %limpiar las graficas
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
hold on
plot([min(T1), T], [P,P],'r--')
hold on 
plot([T, T], [1E-3, P], 'r--')
s = ['T = ',num2str(T), '?C P = ',num2str(P),'bar'];
text(T+10,P,s)
title('Grafica P vs V para el agua')
xlabel('Temperatura en ?C')
ylabel('Presion, bar')
grid on 