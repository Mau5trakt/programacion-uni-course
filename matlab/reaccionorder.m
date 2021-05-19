Ca0 = 50; %mol/l
k = 0.02; % unidades varia segun el caso
t = (0:10:200);


n=input('Ingrese el orden de la reacción(1,2,3,4)')

switch n
    case 0
        Ca = Ca0 - k*t;
    case 1
        Ca = Ca0*exp(-k*t);
    case 2
        Ca = Ca0./(Ca0*k*t+1);
    case 3 
        Ca = Ca0./(2*Ca0*k*t+1)^0.5;
    otherwise
end
        
plot(t,Ca,'o-')