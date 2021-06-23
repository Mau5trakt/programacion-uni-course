t = 626.67; %rankine
p = 7.34797; 
at1_propano = -970688.5625;%menos
at2_propano = 0;
at6_propano = 7.15059;
ap1_propano = -0.76984;%menos
ap2_propano = 0;
ap3_propano = 6.900;
z = (log(p)+(ap2_propano/p^2)+(ap3_propano/p));
kpropano = exp((at1_propano/t^2)+(at2_propano/t)+(at6_propano)*(z));
disp(kpropano);
fprintf('el k para el propano es: %f\n',kpropano)
n = (at1_propano/t^2)+(at2_propano/t)+(at6_propano)*(z);
es = exp(n);
fprintf('comprobación 1 :%f\n',es)
porsi = (at1_propano/t^2)+(at2_propano/t)+(at6_propano)*log(p)+(ap2_propano/p^2)+(ap3_propano/p);
fosfo = exp(porsi);
fprintf('comprobación 2: %f \n', fosfo)