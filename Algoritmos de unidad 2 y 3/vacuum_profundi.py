import os

def sucesores(nodo_actual,nivel,correlativo,usados):
    nodo = []
    remover = []
    salida = []
    if (nodo_actual=="00"):
         nodo = [["40",nivel+1,correlativo],["03",nivel+1,correlativo]]
    elif (nodo_actual=="40"):
         nodo = [["43",nivel+1,correlativo],["13",nivel+1,correlativo]]
    elif (nodo_actual=="03"):
         nodo = [["43",nivel+1,correlativo],["30",nivel+1,correlativo]]
    elif (nodo_actual=="43"):
         nodo = [["03",nivel+1,correlativo],["40",nivel+1,correlativo]]
    elif (nodo_actual=="13"):
         nodo = [["43",nivel+1,correlativo],["03",nivel+1,correlativo],["10",nivel+1,correlativo],["40",nivel+1,correlativo]]
    elif (nodo_actual=="30"):
         nodo = [["40",nivel+1,correlativo],["33",nivel+1,correlativo],["03",nivel+1,correlativo]]
    elif (nodo_actual=="10"):
         nodo = [["40",nivel+1,correlativo],["13",nivel+1,correlativo],["01",nivel+1,correlativo]]
    elif (nodo_actual=="33"):
         nodo = [["43",nivel+1,correlativo],["03",nivel+1,correlativo],["30",nivel+1,correlativo],["42",nivel+1,correlativo]]
    elif (nodo_actual=="01"):
         nodo = [["41",nivel+1,correlativo],["03",nivel+1,correlativo],["10",nivel+1,correlativo]]
    elif (nodo_actual=="42"):
         nodo = [["43",nivel+1,correlativo],["02",nivel+1,correlativo],["40",nivel+1,correlativo],["33",nivel+1,correlativo]]
    elif (nodo_actual=="41"):
         nodo = [["43",nivel+1,correlativo],["01",nivel+1,correlativo],["40",nivel+1,correlativo],["23",nivel+1,correlativo]]
    elif (nodo_actual=="02"):
         nodo = [["42",nivel+1,correlativo],["03",nivel+1,correlativo],["20",nivel+1,correlativo]]
    elif (nodo_actual=="23"):
         nodo = [["43",nivel+1,correlativo],["03",nivel+1,correlativo],["20",nivel+1,correlativo],["41",nivel+1,correlativo]]

    for i in range(len(nodo)):
        if nodo[i][0] in usados:
            skip = True
        else:
            usados.append(nodo[i][0])
            salida.append(nodo[i])

    return salida,usados



def profundidad(nodo_inicio,nodo_fin):
    grafo="digraph arbol { \n"
    correlativo = 0
    lista = [nodo_inicio]
    usados = []
    grafo+=crearNodo(nodo_inicio)
    while lista:
        correlativo+=1
        nodo_actual = lista.pop(0)
        print (nodo_actual)
        if nodo_actual[0] == nodo_fin:
            grafo+="}"
            crearArchivoDot(grafo)
            return print ("SOLUCION")
        
        temp,usados = sucesores (nodo_actual[0],nodo_actual[1],correlativo,usados)
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
        if (nuevo[0]=="20"):
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



profundidad(["00",0,0],"20")