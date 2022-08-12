#Ejercicio 6

Historial2 = [23500, 5960, 2300, 10200, 8900]

#Sumar montos de servicios de Frida
def sumarMontos(tupla):
    suma = 0
    for i in range(0, len(tupla)):
        suma += tupla[i]
    return suma

#Contar Gastos SUperiores a 5000
def contarGastos(tupla):
    contador = 0
    for i in range(0, len(tupla)):
        if tupla[i] > 5000:
            contador += 1
    return contador

print(sumarMontos(Historial2))
print(contarGastos(Historial2))