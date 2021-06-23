% p = ((RT)/(V_m-b))-((a*T^0.5)/V_m-b)

P = 56 ; %atm 
R = 0.08206 ; %Constante de los gases 
T = 450;%K
Tc = 405.5; %K
Pc = 111; %atm
V = 1;
% volumen molar 
m = 56/36.927;

V_m = V/m;
a = (1/9*2^(1/3)-1) * (R^2*Tc^2.5)/Pc ;
b = (2^(1/3))-1/3 * (R*Tc)/Pc;
p =((R*T)/(V_m-b))-((a*T^0.5)/V_m-b);
fprintf('El volumen molar es: %6f \n ', m)
fprintf('El factor de comprensibilidad es: %6f', p)

