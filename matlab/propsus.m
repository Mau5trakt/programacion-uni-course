% Calculo de Propiedades de para algunas sustancias en su estado líquido
% T en grados celcius, dens en kg/m3, visc en Pa*s

function [dens,visc]=propsus(T,sust)
switch sust 
    case 'agua'
        dens = 1.6e-05*T.^3 + -0.005963*T.^2 + 0.02056*T + 1000;
        visc = (-2.717e-09*T.^3 + 6.052e-07*T.^2 + -4.822e-05*T + 0.00176)*1000;
        
    case  'acetona'
        dens =  -1.204*T + 814.1;
        visc =   1.435e-05*T.^2 + -0.003734*T + 0.3999;
        
    case  'etanol'
        dens = -0.001341*T.^2 + -0.1935*T + 961;
        visc = -1.52e-06*T.^3 + 0.0003966*T.^2 + -0.03997 *T + 1.872;
        
    case 'benceno'
        dens = 1000*( -0.001064*T + 0.9001);
        visc = 3.883e-05*T.^2 + -0.009329*T + 0.809;

    otherwise
        error('La sustancia no esta en la base de datos')
end

