
def convert_to_binary_string(numbers):
    binary_strings = []
    for num in numbers:
        binary_string = bin(num)[2:]  # Convertir a binario y eliminar el prefijo '0b'
        binary_string = binary_string.zfill(8)  # Rellenar con ceros a la izquierda hasta 8 dígitos
        binary_strings.append(binary_string)
    return binary_strings

def calcular_hijos(padres):
    mejor_hijo = -10000
    peor_hijo = -10000
    for i in range(0, len(padres)):
        if (mejor_hijo < padres[i]):
            peor_hijo = mejor_hijo
            mejor_hijo = padres[i]
        elif (peor_hijo < padres[i]):
            peor_hijo = padres[i]
        if (mejor_hijo < peor_hijo):
            temp = mejor_hijo
            mejor_hijo = peor_hijo
            peor_hijo = temp
    return mejor_hijo, peor_hijo


#Función para convertir un array de strings binarios a enteros
def to_int(numeros):
    enteros = []
    for num in numeros:
        enteros.append(int(num, 2))
    return enteros

#Calcular promedio de un array de enteros, pero utilizando la funcion f(x)=25*x-x^2
def promedio(numeros):
    promedio = 0
    for num in numeros:
        resultado = (25*num) - (num**2)
        print(resultado)
        promedio += resultado
    return promedio/len(numeros)

#Mezclar los 2 mejores padres que estan en binario string en forma de zigzag para generar 2 nuevos hijos
#Retornarlos como enteros
def mezclar(padres):
    mejor_hijo, peor_hijo = calcular_hijos(padres)
    mejor_hijo = convert_to_binary_string([mejor_hijo])[0]
    peor_hijo = convert_to_binary_string([peor_hijo])[0]
    hijo1 = ""
    hijo2 = ""
    for i in range(0, len(mejor_hijo)):
        if (i%2 == 0):
            hijo1 += mejor_hijo[i]+""
            hijo2 += peor_hijo[i]+""
        else:
            hijo1 += peor_hijo[i]+""
            hijo2 += mejor_hijo[i]+""
    #Convertirlos a enteros y retornar el mas pequeño como el mejor hijo y el otro como el peor hijo
    tmp1 = to_int([hijo1])
    tmp2 = to_int([hijo2])
    
    if (tmp1[0] < tmp2[0]):
        return tmp1[0], tmp2[0]
    else:
        return tmp2[0], tmp1[0]


def individuos(entrada):
    #Inicializar variables
    padres = entrada
    mejor_hijo,peor_hijo,mejor_padre,peor_padre = 0,0,0,0
    binarios = []
    promedio_anterior = 0.1
    promedio_actual = promedio(padres)
    contador = 0
    #Imprimir la primera generación
    print("La generación en la iteración ",contador," es:",padres)
    while (promedio_anterior/promedio_actual<0.70):
        #Aumentar el contador
        contador += 1
        #Obtener los 2 mejores padres de la entrada
        mejor_padre, peor_padre = calcular_hijos(padres)
        #Obtener los 2 mejores hijos de la entrada
        mejor_hijo,peor_hijo = mezclar(padres)
        #Construir el nuevo array padres con el mejor padre, el peor hijo, el mejor hijo y el peor padre
        padres = [mejor_padre, peor_hijo, mejor_hijo, peor_padre]
        #Calcular el promedio de los padres y guardar el promedio anterior
        promedio_anterior = promedio_actual
        promedio_actual = promedio(padres)
        #Imprimir el array padres en la iteración actual
        print("La generación en la iteración ",contador," es:",padres)
        #Imprimir la división entre promedio anterior y promedio actual
        print("El promedio de la iteración ",contador," es:",promedio_anterior/promedio_actual)
        #Break de seguridad si el contador llega a ser mas de 1000
        if (contador > 20):
            break
#Entrada y uso
entrada = [22,24,4,27]
individuos(entrada)       


