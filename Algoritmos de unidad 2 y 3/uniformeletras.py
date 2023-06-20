import os

algoritmo = None



def sucesores(n,ant,correlativo):
    if (n=='A'):
        return [['B',3+ant,correlativo],['C',2+ant,correlativo]]
    if (n=='B'):
        return [['A',3+ant,correlativo],['C',2+ant,correlativo],['D',2+ant,correlativo],['E',1+ant,correlativo]]
    if (n=='C'):
        return [['A',2+ant,correlativo],['B',2+ant,correlativo],['E',5+ant,correlativo]]
    if (n=='D'):
        return [['B',2+ant,correlativo],['E',2+ant,correlativo],['F',4+ant,correlativo]]
    if (n=='E'):
        return [['B',1+ant,correlativo],['C',5+ant,correlativo],['D',2+ant,correlativo],['F',1+ant,correlativo]]




def uniforme (nodo_inicio, nodo_fin):
    print ("\nUniforme")
    correlativo=0
    grafo="digraph arbol { \n"
    lista = [[nodo_inicio, 0,correlativo]]
    crearNodo(lista[0])
    while lista:
        nodo_actual = lista.pop(0)
        print (nodo_actual)
        #Crear nodo en graphviz
        grafo+=crearNodo(nodo_actual)
        correlativo+=1
        #Para pararlo por si se encicla
        #if (nodo_actual[2]>3):return print ("NO-SOLUCION")
        if nodo_actual[0] == nodo_fin:
            grafo+="}"
            crearArchivoDot(grafo)
            return print ("SOLUCION"), print (nodo_actual), print("\n\n"), print(grafo)
        temp = sucesores (nodo_actual[0],nodo_actual[1],correlativo)
        print (temp)
        #Crear nodos hijos en graphviz
        grafo+=crearNodoHijos(temp)
        #Crear aristas en graphviz
        grafo+=crearArista(nodo_actual,temp)

        if temp:
            lista.extend(temp)
            lista.sort(key=lambda x: int(x[1]))
            #print (lista)
    print ("NO-SOLUCION")


def crearNodo(nuevo):
    grafo="\n"
    if (estado_final == nuevo[0]):
        grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\" [style=filled, fillcolor=lightblue];"
        grafo+="\n"
    else:
        grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\";"
        grafo+="\n"        
    return grafo

def crearNodoHijos(nuevos):
    grafo="\n"
    for nuevo in nuevos:
        if (estado_final == nuevo[0]):
            grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\" [style=filled, fillcolor=lightblue];"
        else:
            grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\";"
        grafo+="\n"
    return grafo

def crearArista(padre,sucesores):
    grafo="\n"
    for sucesor in sucesores:
        grafo+="\""+padre[0]+"("+str(padre[1])+")--"+str(padre[2])+"\""+"->"+"\""+sucesor[0]+"("+str(sucesor[1])+")--"+str(sucesor[2])+"\";"
        grafo+="\n"
    return grafo

def crearArchivoDot(texto):
    ruta_inicio = os.path.expandvars("%USERPROFILE%")

    # Define la ruta del archivo en el escritorio
    ruta_archivo = os.path.join(ruta_inicio, "Desktop", "grafo.txt")

    # Abre el archivo en modo escritura
    archivo = open(ruta_archivo, "w")

    # Escribe el contenido en el archivo
    archivo.write(texto)

    # Cierra el archivo
    archivo.close()

def ejecutarAlgoritmo():
    global estado_final
    estado_final = "F"
    uniforme("A","F")


ejecutarAlgoritmo()