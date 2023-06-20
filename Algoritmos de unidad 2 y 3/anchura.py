import os

def sucesores(nodo_actual,nivel,correlativo):
    if (nodo_actual=="1"):
        return [["2",nivel+1,correlativo],["4",nivel+1,correlativo],["5",nivel+1,correlativo]]
    elif (nodo_actual=="2"):
        return [["1",nivel+1,correlativo],["3",nivel+1,correlativo],["4",nivel+1,correlativo],["5",nivel+1,correlativo],["6",nivel+1,correlativo]]
    elif (nodo_actual=="3"):
        return [["2",nivel+1,correlativo],["5",nivel+1,correlativo],["6",nivel+1,correlativo]]
    elif (nodo_actual=="4"):
        return [["1",nivel+1,correlativo],["2",nivel+1,correlativo],["5",nivel+1,correlativo],["7",nivel+1,correlativo],["8",nivel+1,correlativo]]
    elif (nodo_actual=="5"):
        return [["1",nivel+1,correlativo],["2",nivel+1,correlativo],["3",nivel+1,correlativo],["4",nivel+1,correlativo],
                ["6",nivel+1,correlativo],["7",nivel+1,correlativo],["8",nivel+1,correlativo],["9",nivel+1,correlativo]]
    elif (nodo_actual=="6"):
        return [["2",nivel+1,correlativo],["3",nivel+1,correlativo],["5",nivel+1,correlativo],["8",nivel+1,correlativo],["9",nivel+1,correlativo]]
    elif (nodo_actual=="7"):
        return [["4",nivel+1,correlativo],["5",nivel+1,correlativo],["8",nivel+1,correlativo]]
    elif (nodo_actual=="8"):
        return [["4",nivel+1,correlativo],["5",nivel+1,correlativo],["6",nivel+1,correlativo],["7",nivel+1,correlativo],["9",nivel+1,correlativo]]


def anchura(nodo_inicio,nodo_fin):
    grafo="digraph arbol { \n"
    correlativo = 0
    lista = [nodo_inicio]
    grafo+=crearNodo(nodo_inicio)
    print ("Que paso")
    while lista:
        correlativo+=1
        nodo_actual = lista.pop(0)
        print (nodo_actual)
        if nodo_actual[0] == nodo_fin:
            grafo+="}"
            crearArchivoDot(grafo)
            return print ("SOLUCION")
        
        temp = sucesores (nodo_actual[0],nodo_actual[1],correlativo)
        print (temp)
        grafo+=crearNodoHijos(temp)
        grafo+=crearArista(nodo_actual,temp)
        if temp:
            lista.extend(temp)
            print (lista)
    print ("NO-SOLUCION")
    

def crearNodo(nuevo):
    grafo="\n"
    grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\";"
    grafo+="\n"
    return grafo

def crearNodoHijos(nuevos):
    grafo="\n"
    for nuevo in nuevos:
        if (nuevo[0]=="9"):
            grafo+="\""+nuevo[0]+"("+str(nuevo[1])+")--"+str(nuevo[2])+"\"[style=filled, fillcolor=lightblue];"
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



anchura(["1",0,0],"9")