function [Re] = rey 
%Tipo de regimen laminar 
%Ingrese propiedades
v=input('Ingrese la velocidad en m/s \n');
d=input('Ingrese la densidad en kg/m^3 \n');
D=input('Ingrese diametro en m \n');
u=input('Ingrese la viscosidad en Pa*s \n');

%Calculo de reynolds 
Re = (v*d*D)/u;

if (0 < Re && Re < 2000)
disp('Regimen laminar')

elseif (2000 <= Re && Re <= 4000)
   disp ('Regimen Transitorio ')
   
    elseif (4000 < Re)
            disp ('Regimen turbulento')
            
else 
      disp('Eror: Reynolds no puede ser negativo') 
      
end 