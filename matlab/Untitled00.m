%%% $\ln K = \frac{a_{T_1}}{T^2}+\frac{a_{T_2}}{T}+a_{T_6}+a_{P_1}\ln P+\frac{a_{P_2}}{P^2}+\frac{a_{P_3}}{P}$ 
bisect(@FuncionY,1,8)

%%
function T = celsius_rankine(Tc)
    T = Tc * 9 / 5 + 491.67;
end
function P = atm_psi(Patm)
    P = Patm*14.696;
end
function K = findk(T,P,aT1,aT2,aT6,aP1,aP2,aP3)
    K = exp(aT1/T^2+aT2/T+aT6+aP1*log(P)+aP2/P^2+aP3/P);
end
function y = FuncionY(P)
    molar_pro = 0.2;
    molar_hex = 0.4;
    molar_oct = 0.4;
    T = celsius_rankine(75);
    P = atm_psi(P); %Suponer una presión en atm
    K_pro = findk(T,P,-970688.5625,0,7.15059,-0.76984,0,6.90224); %propano
    K_hex = findk(T,P,-1778901,0,6.96783,-0.84634,0,0); %hexano
    K_oct = findk(T,P,0,-7646.81641,12.48457,-0.73152,0,0); %octano
    y = molar_pro*K_pro + molar_hex*K_hex + molar_oct*K_oct-1;
end
function root = bisect(func,x1,x2,filter,tol)
% Encuentra una raiz en un intervalo de f(x) por biseccion.
% USAGE: root = bisect(func,x1,x2,filter,tol)
% INPUT:
% func = manejar la funcion que retorna f(x).
% x1,x2 = limites del intervalo que contiene la raiz.
% filter = filtro de singularidad: 0 = off (default), 1 = on.
% tol = error de tolerancia (default es 1.0e4*eps).
% OUTPUT:
% root = raiz de f(x), o NaN si una singularidad es sospechada.
if nargin < 5; tol = 1.0e4*eps; end
if nargin < 4; filter = 0; end
f1 = feval(func,x1);
if f1 == 0.0; root = x1; return; end
f2 =  feval(func,x2);
if f2 == 0.0; root = x2; return; end
if f1*f2 > 0
error('La raiz no esta encerrada en (xl,xu)')
end
n = ceil(log(abs(x2 - x1)/tol)/log(2.0));
for i = 1:n
x3 = 0.5*(x1 + x2);
f3 = feval(func,x3);
if(filter == 1) && (abs(f3) > abs(f1)) && (abs(f3) > abs(f2))
    root = NaN; return
end
if f3 == 0.0
root = x3; return
end
if f2*f3 < 0.0
x1 = x3; f1 = f3;
else
x2 = x3; f2 = f3;
end
end
root=(x1 + x2)/2;
end