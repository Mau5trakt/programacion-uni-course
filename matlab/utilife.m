% Uso de ciclos for para calcular vida util de conservas dada una ecuación
%Hecho por Enrique Alemany          Fecha 14/05/21

%Para x, y desde 1 hasta 10
% x: tiempo de tratamiento 
% y: pH de las conservas
% z: vida util en dias 
x = 1:10;
y = 1:10;
z = zeros(10,10);
for i =1:10 
    for j =1:10
        z(i,j)= x(i)^3 - 18*x(i)^2 + 96*x(i) + y(j)^3 - 27*y(j)^2 + 231*y(j) - 724;
    end
end

surf(x,y,z)