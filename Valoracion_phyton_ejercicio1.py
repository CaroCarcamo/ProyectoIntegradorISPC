# Parametros
DNI= 28957346
nombre= "Juan"
apellido= "Perez"
telefono= 4789389
direccion= "Belgrano 101"

# Creacion de lista Dueno
Dueno =[DNI,nombre,apellido,telefono,direccion]

# Imprimir Nro de telefono de Dueño si se cumple la condicion
if Dueno[0] > 26000000:
    print("El número de teléfono del dueño es: ", Dueno[3])
else:
    print("No es posible acceder al número teléfonico")
    
