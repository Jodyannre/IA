import random

def binario_a_decimal(binario):
    return int(binario, 2)

def decimal_a_binario(decimal):
    return bin(decimal)[2:]

def calcular_fitness(x):
    return 25 * x - x**2

def seleccion_torneo(poblacion, fitness, tam_torneo):
    seleccionados = []
    for _ in range(2):
        participantes = random.sample(range(len(poblacion)), tam_torneo)
        mejor_fitness = max(participantes, key=lambda i: fitness[i])
        seleccionados.append(poblacion[mejor_fitness])
    return seleccionados

def cruce_multipunto(padre1, padre2):
    longitud = min(len(padre1), len(padre2))
    puntos_cruce = random.sample(range(1, longitud), random.randint(1, longitud-1))
    puntos_cruce.sort()
    hijo1, hijo2 = padre1[:], padre2[:]
    for punto in puntos_cruce:
        hijo1[punto:], hijo2[punto:] = hijo2[punto:], hijo1[punto:]
    return hijo1, hijo2

def reemplazo(poblacion, fitness, padre1, padre2, hijo1, hijo2):
    mejor_padre = max(fitness)
    peor_padre = min(fitness)
    mejor_hijo = max(calcular_fitness(binario_a_decimal(hijo1)), calcular_fitness(binario_a_decimal(hijo2)))
    peor_hijo = min(calcular_fitness(binario_a_decimal(hijo1)), calcular_fitness(binario_a_decimal(hijo2)))

    index_mejor_padre = fitness.index(mejor_padre)
    index_peor_padre = fitness.index(peor_padre)

    poblacion[index_peor_padre] = padre1 if padre1 != padre2 else padre1
    poblacion[index_mejor_padre] = hijo1 if mejor_hijo != peor_hijo else hijo2

def criterio_convergencia(fitness):
    promedio = sum(fitness) / len(fitness)
    porcentaje_convergencia = promedio / max(fitness)
    return porcentaje_convergencia >= 0.7

poblacion = ['10110', '11000', '00010', '11011']
fitness = [calcular_fitness(binario_a_decimal(individuo)) for individuo in poblacion]
generaciones = 0
convergencia_positiva = 0

while True:
    generaciones += 1
    padres_seleccionados = seleccion_torneo(poblacion, fitness, 2)
    hijos = cruce_multipunto(padres_seleccionados[0], padres_seleccionados[1])
    reemplazo(poblacion, fitness, padres_seleccionados[0], padres_seleccionados[1], hijos[0], hijos[1])
    if criterio_convergencia(fitness):
        convergencia_positiva += 1
    if generaciones >= 1000 or convergencia_positiva >= 30: