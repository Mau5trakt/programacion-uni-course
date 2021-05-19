%Programa para calcular el regimen de flujo según el número de Reynolds
% Hecho por nombre y apellido 

re = input('Ingrese el Reynolds \n')
dens = 1000; %kg/m3
visc = 1E-3;
D = 0.05;
Q = (0:1:20);
V = 8.5E-3*Q;

Re = dens*V*D/visc;

plot(Q,Re, 'bp-')
hold on 
plot([0, 20],[2100,2100],'r--',[0,20],[4000, 4000],'g--' )
text (10,1000, 'zona laminar')
text(10,3000, 'zona transitoria')
text(10,5000, 'zona turbulenta')
title ('Calculo de Reynolds')
xlabel ('Caudal (Q) [L/S]')
ylabel ('Re [-] ')
