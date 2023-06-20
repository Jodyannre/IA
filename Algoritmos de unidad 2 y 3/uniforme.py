import os

algoritmo = None



def sucesores(n,ant,correlativo):
    if (n=='1'):
        return [['2',3+ant,correlativo],['3',4+ant,correlativo]]
    if (n=='2'):
        return [['1',3+ant,correlativo],['3',4+ant,correlativo],['4',4+ant,correlativo]]
    if (n=='3'):
        return [['1',4+ant,correlativo],['2',5+ant,correlativo],['5',2+ant,correlativo]]
    if (n=='4'):
        return [['2',4+ant,correlativo],['5',5+ant,correlativo],['6',4+ant,correlativo]]
    if (n=='5'):
        return [['3',2+ant,correlativo],['4',5+ant,correlativo],['7',4+ant,correlativo]]
    if (n=='6'):
        return [['4',4+ant,correlativo],['8',1+ant,correlativo]]
    if (n=='7'):
        return [['5',4+ant,correlativo],['8',3+ant,correlativo]]



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
    estado_final = "8"
    uniforme("1","8")


ejecutarAlgoritmo()