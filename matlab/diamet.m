%programa para calcular la velocidad de sedmentacion para particulas
%esfericas en un medio

% Datos de entrada
dp = 2200; %kg/m^3 densidad dela particula
d = 1000; % kg/m^3 densidad del medio 
g = 9.81; % m/s^2 constante de la gravedad
D = 0.001; % m Diametro de la particula
u = 0.01; % Pa . s Viscosidad del medio 

% Uso del ciclo while para resolver problemas

vt = 0.1; % Asumimos una velocidad inicial 
e = 1000; % asumimos un valor inicial 
c = 0; 
while e > 1E-5
    Re = D*vt*d/u;
    if Re < 0.1
        CD = (24/Re);
    elseif 0.1 <= Re && Re <= 1000
        CD = (24/Re)* (1+0.14*Re^0.7);
    else
        error ('Reynolds excede el valor')
    end
    vtk =((4*(dp-d)*g*D)/(3*CD*d))^0.5;
    e = abs(vtk -vt);
    vt = vtk;
    c = c+1;
    
end
%resultados
disp('La velocidad de sedimentación es')
disp(vt)
disp('')
fprintf('Se necesitaron %3.0d iteraciones',c)