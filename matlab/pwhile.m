vida = 100

while vida > 0
    atk = input('Ingrese un numero entre 1 y 10: ')
    fprintf('Usted ha hecho %6.0f de daño',atk)
    vida = vida - atk 
end 