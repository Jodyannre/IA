import os

def sucesores(nodo_actual,nivel,correlativo):
    if (nodo_actual=="A"):
        return [["B",nivel+1,correlativo],["C",nivel+1,correlativo],["E",nivel+1,correlativo]]
    elif (nodo_actual=="B"):
        return [["D",nivel+1,correlativo],["E",nivel+1,correlativo]]
    elif (nodo_actual=="C"):
        return [["E",nivel+1,correlativo],["F",nivel+1,correlativo]]
    elif (nodo_actual=="D"):
        return [["G",nivel+1,correlativo]]
    elif (nodo_actual=="E"):
        return [["G",nivel+1,correlativo],["H",nivel+1,correlativo]]
    elif (nodo_actual=="F"):
        return [["H",nivel+1,correlativo]]
    elif (nodo_actual=="G"):
        return [["I",nivel+1,correlativo]]
    elif (nodo_actual=="H"):
        return [["I",nivel+1,correlativo]]



def profundidad(nodo_inicio,nodo_fin):
    grafo="digraph arbol { \n"
    correlativo = 0
    lista = [nodo_inicio]
    grafo+=crearNodo(nodo_inicio)
    while lista:
        correlativo+=1
        nodo_actual = lista.pop(0)
        print (nodo_actual)
        if nodo_actual[0] == nodo_fin:
            grafo+="}"
            crearArchivoDot(grafo)
            return print ("SOLUCION")
        
        temp = sucesores (nodo_actual[0],nodo_actual[1],correlativo)
        #temp.reverse()
        print (temp)
        grafo+=crearNodoHijos(temp)
        grafo+=crearArista(nodo_actual,temp)
        if temp:
            temp.extend(lista)
            lista=temp
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



profundidad(["A",0,0],"I")