# Luis Espino 2017

import time, random


# Declaración de vectores con datos para el cálculo de probabilidades
"""
    Estado 0 = Ensuciar A o izquierda
    Estado 1 = Ensuciar B o derecha
    Estado 2 = Ensuciar ambas
    Estado 3 = No hacer nada
"""

# Estados en que puede estar la aspiradora
"""
                                  1, 4, 2
    Estado 1 = A, DIRTY, DIRTY => 0, 0, 0 => 0
    Estado 2 = B, DIRTY, DIRTY => 1, 0, 0 => 1
    Estado 3 = A, DIRTY, CLEAN => 0, 0, 1 => 2
    Estado 4 = B, DIRTY, CLEAN => 1, 0, 1 => 3
    Estado 5 = A, CLEAN, DIRTY => 0, 1, 0 => 4
    Estado 6 = B, CLEAN, DIRTY => 1, 1, 0 => 5
    Estado 7 = A, CLEAN, CLEAN => 0, 1, 1 => 6
    Estado 8 = B, CLEAN, CLEAN => 1, 1, 1 => 7
"""

#Globales
probabilidades = [0.10, 0.10, 0.20, 0.60]
estados = [0,1,2,3]
estados_alcanzados = [0,0,0,0,0,0,0,0]
iteraciones = 0

def reflex_agent(location, state):
    if state=="DIRTY":
        return 'CLEAN'
    elif location=='A':
        return 'RIGHT'
    elif location=='B':
        return 'LEFT'   

def test(states):
    global iteraciones
    while True:
        #Registrar estado actual
        registrar_estado(states)

        location = states[0]
        state = (states[2], states[1])[states[0]=='A']
        action = reflex_agent(location, state)
        print ("Location: "+location+" | Action: "+action+ " | State: "+str(obtener_estado_actual(states)+1)+"")
        if action == "CLEAN":
            if location == 'A':
                states[1]="CLEAN"
            elif location == 'B':
                states[2]="CLEAN"
        elif action == "RIGHT":
            states[0]='B'
        elif action == "LEFT":
            states[0]='A' 

        if verificar_estados():
            return
        
        ensuciar_habitacion(states)

        #time.sleep(2.8) #Bajar un poco de tiempo y utilizar la función de verificar estado en su lugar
        iteraciones += 1

#Función que calcula la probabilidad de un estado basándose en un distribución discreta acumulativa
def calcular_probabilidad():
    if len(probabilidades) != len(estados):
        raise ValueError("Las listas de probabilidades y estados deben tener la misma longitud")

    estado_seleccionado = random.choices(estados, weights=probabilidades, k=1)[0]
    return estado_seleccionado

#Función que ensucia una habitación dependiendo de la probabilidad calculada
def ensuciar_habitacion(states):
    probabilidad = calcular_probabilidad()
    if probabilidad == 0:
        states[1]="DIRTY"
        print("----------------------------->Se ensució la habitación A")
    elif probabilidad == 1:
        states[2]="DIRTY"
        print("----------------------------->Se ensució la habitación B")
    elif probabilidad == 2:
        states[1]="DIRTY"
        states[2]="DIRTY"
        print("----------------------------->Se ensuciaron ambas habitaciones")
    else:
        pass
        print("----------------------------->No se ensució ninguna habitación")

#Obtener estado actual
def obtener_estado_actual(states):
    return (states[0]=="B")+((states[1]=="CLEAN")*4)+((states[2]=="CLEAN")*2)

#Función que registra el estado actual en el vector de estados alcanzados        
def registrar_estado(states):
    estado_actual = obtener_estado_actual(states)
    #print("Estado actual: "+str(estado_actual))
    estados_alcanzados[estado_actual] = 1

#Función que verifica si ya ha alcanzado todos los estados
def verificar_estados():
    print("Matriz actual de estados alcanzados: "+str(estados_alcanzados))
    for estado in estados_alcanzados:
        if estado == 0:
            return False
    print("Todos los estados han sido alcanzados.")
    print("Número de iteraciones: "+str(iteraciones))
    return True

test(['A','DIRTY','DIRTY'])

