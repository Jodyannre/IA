class Nodo:
    def __init__(self, valor,maximizar):
        self.value = valor
        self.level = 0
        self.maximizar = maximizar

def construir_arbol(valores, maximizar):
    pila = []
    for i,valor in enumerate(valores):
        #Crear nuevo nodo con el valor nuevo
        n_nodo = Nodo(valor,maximizar)
        #Agregar nodo a la pila
        pila.append(n_nodo)
        #Verificar si la pila tiene al menos 2 nodos
        if (len(pila) >= 2):
            #Obtener los 2 ultimos nodos de la pila
            n1 = pila.pop()
            n2 = pila.pop()
            #Verificar si el nivel de los 2 nodos es el mismo
            if (n1.level == n2.level):
                #Crear nuevo nodo con el valor mayor o menor, dependiendo de su atributo maximizar
                #Si este es true entonces es maximiar y si es false es minimizar
                #El valor del atributo maximizar del nuevo nodo sera el contrario del de los nodos que se estan comparando
                if (n1.maximizar):
                    n_nodo = Nodo(max(n1.value,n2.value),not n1.maximizar)
                    n_nodo.level = n1.level + 1
                    pila.append(n_nodo)
                else:
                    n_nodo = Nodo(min(n1.value,n2.value),not n1.maximizar)
                    n_nodo.level = n1.level + 1
                    pila.append(n_nodo)
            else:
                #Volver a ingresar los nodos a la pila porque no son del mismo nivel, el orden debe ser el mismo que tenian antes
                pila.append(n2)
                pila.append(n1)
    if (len(pila)>1):
        return construir_arbol(obtenerValores(pila), not maximizar)
    else:
        return pila


def obtenerValores(pila):
    valores = []
    while pila:
        nodo = pila.pop()
        valores.insert(0,nodo.value)
    return valores


# Lista de números para el arbol
pares_nodos = [8,23, -47, 28, -30, -37,3,-41,-19,4,-49,4,43,45,-26,-14]
#pares_nodos = [8,23, -47, 28, -30, -37,3,-41]
respuesta = construir_arbol(pares_nodos,False)
#Recorrer la respuesta e imprimir los valores de los nodos




for nodo in respuesta:
    print(nodo.value)

