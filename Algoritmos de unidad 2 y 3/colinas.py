import os

def heuristicaCasillasFueraLugar(nodo_actual,nodo_fin):
    return [x != y for (x, y) in zip(nodo_actual, nodo_fin)].count(True)

def heuristicaManhattan(nodo_actual,nodo_fin):
    heuristica = 0
    for i,x in enumerate(nodo_actual):
        posI= nodo_actual.index(x)
        posF= nodo_fin.index(x)
        heuristica += abs(posI-posF)
    return heuristica

def heuristicaEsperanza(nodo_actual,nodo_fin):
    return abs(int(nodo_actual)-int(nodo_fin))


def sucesores(n,s,nivel,correlativo):
    return [[n[1]+n[0]+n[2]+n[3],algoritmo(n[1]+n[0]+n[2]+n[3],s),nivel+1,correlativo],
            [n[0]+n[2]+n[1]+n[3],algoritmo(n[0]+n[2]+n[1]+n[3],s),nivel+1,correlativo],
            [n[0]+n[1]+n[3]+n[2],algoritmo(n[0]+n[1]+n[3]+n[2],s),nivel+1,correlativo],]

def bestfirst (nodo_inicio, nodo_fin):
    print ("\nBEST-FIRST")
    correlativo=0
    grafo="digraph arbol { \n"
    lista = [[nodo_inicio, algoritmo(nodo_inicio, nodo_fin),0,correlativo]]
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
        temp = sucesores (nodo_actual[0],nodo_fin,nodo_actual[2],correlativo)
        #Seleccionar solo el mejor
        temp = [min(sucesores (nodo_actual[0],nodo_fin,nodo_actual[2],correlativo),key=lambda x: int(x[1]))]
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


#heuristicaMovimientos("halo","hola")


def crearNodo(nuevo):
    grafo="\n"
    grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[3])+"\";"
    grafo+="\n"
    return grafo

def crearNodoHijos(nuevos):
    grafo="\n"
    for nuevo in nuevos:
        if (nuevo[0]==nodoFinal):
            grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[3])+"\"[style=filled, fillcolor=lightblue];"
        else:
            grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[3])+"\";"
        grafo+="\n"
    return grafo

def crearArista(padre,sucesores):
    grafo="\n"
    for sucesor in sucesores:
        grafo+="\""+padre[0]+"("+str(padre[1])+")--"+str(padre[3])+"\""+"->"+"\""+sucesor[0]+"("+str(sucesor[1])+")--"+str(sucesor[3])+"\";"
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
    '''
        Heuristicas
        heuristicaCasillasFueraLugar
        heuristicaManhattan
        heuristicaEsperanza
    '''
    global algoritmo,nodoFinal
    nodoFinal = "1234"
    algoritmo = heuristicaEsperanza
    bestfirst("4213","1234")


ejecutarAlgoritmo()