
valores = [(8,23), (-47, 28), (-30, -37),(3,-41),(-19,4),(-49,4),(43,45),(-26,-14)]

class Nodo:
    def __init__(self, valor):
        self.value = valor
        self.left = None
        self.right = None


#Función que construye todos los nodos desde un arreglo de pares de valores que pueden tener entre 1 y 3 valores
def construir_nodos(valores):
    nodos=[]
    left = None
    right = None
    for i in valores:
        for nodo in i:
            nodo = Nodo(nodo)
            if (right == None):
                nodo.right = right
                right.left = nodo
                right = nodo
            else:
                right = nodo
        nodos.insert(0,nodo)
    return nodos

def construir_arbol(valores,maximizar):
    nodos=construir_nodos(valores)



def arbol(nodos,maximizar):
    salida=[]
    mejorNodo = None
    ganador = None
    for nodo in nodos:
        if (nodo.right != None):
            ganador = obtenerGanador(nodo,nodo.right,maximizar)
            mejorNodo = obtenerGanador(ganador,mejorNodo,maximizar)
        else:
            if (ganador == None):
                salida.insert(0,nodo)
            else:
                salida.insert(0,mejorNodo)
            ganador = None
            mejorNodo = None

def obtenerGanador(nodo,ganador,maximizar):
    if (ganador!=None):
        if (maximizar):
            if (nodo.value > ganador.value):
                return nodo
            else:
                return ganador
        else:
            if (nodo.value < ganador.value):
                return nodo
            else:
                return ganador
    else:
        return nodo