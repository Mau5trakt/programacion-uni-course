function[rugosidad] = rmaterial(material)
switch material %se definen los materiales de los cuales se tiene la rugosidad
    case 'vidrio'
        rugosidad = 0;
    case 'cobre'
        rugosidad = 1.2e-03;
    case 'PVC'
        rugosidad = 2e-03;
    case 'Acero Inoxidable'
        rugosidad = 1.5e-05;
    case 'Acero al Carbón'
        rugosidad = 2e-02;
    case 'Hierro dulce'
        rugosidad = 0.4;
    case 'Hierro Galvanizado'
        rugosidad = 0.05;
    case 'Cemento Suavizado'
        rugosidad = 0.3;
    case 'Concreto' 
        rugosidad = 1.5;
end
        
