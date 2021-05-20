% Programa para calcular distintos problemas en Ing. Economica
%%Hecho por: Elena Aguilar

% Datos de Entrada
i= input ('Ingrese la tasa de interes en forma fraccional \n');
n= input ('Ingrese el numero de año \n');

opcion= input ('Elija que desea calcular: (1)F/P (2)P/F (3)P/A (4)A/P (5)A/F (6)F/A \n');
switch opcion
    case 1
        P = input ('Ingrese el valor presente \n');
        F = p*(1+i)^n;
        fprintf ('El valor futuro es %6.2f  \n', F)
    case 2 
      F = input ('Ingrese el valor presente \n') ;
      P = f*(1+i)^(-n);
       fprintf ('El valor futuro es %6.2f  \n', P)
    case 3
        A = ('Ingrese el pago uniforme\n');
        P = A*((1+i)^n-1)/((i*(1+i)^n))
    case 4
        
        
    case 5
        
    case 6
         
    otherwise
        error ('Por favor introduzca un numero entre 1 y 6\n')
end   
       
        