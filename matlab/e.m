%Variables
n = input('Hasta qu� n�mero realiza el sumatorio');
s = 0;
%empleo del bucle 
for i=1:n
    s=s+(((1/i)-(1/1+i)));
end
%Solucion
disp (s);