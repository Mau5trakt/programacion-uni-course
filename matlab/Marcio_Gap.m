%Mickey Thompson Like's purru 
Re = input('Ingrese el Reynolds \n');

if 0 < Re && Re <= 2400
    disp('Regimen Laminar')
elseif 2400 < Re && Re < 4000
    disp('Regimen Transitorio')
elseif Re >= 4000 
    disp('Regimen Turbulento')
else 
    disp('El valor de Reynolds no puede ser 0 o negativo')
end

%%