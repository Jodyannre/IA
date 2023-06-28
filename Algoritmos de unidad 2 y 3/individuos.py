import random

def ag(n,i):
    gen = []
    mejor_padre=0
    peor_padre=0
    mejor_hijo=0
    peor_hijo=0
    #generar primera generación
    for j,valor in enumerate(n):
        x = valor
        calculo=25*x-x**2
        print(calculo)
        gen.append(calculo)
    print(gen)  

    #iterar i veces el algoritmo genético
    for x in n:

        #selección de 2 padres
        if (abs(x-gen[0])<=abs(x-gen[1])): p1 = 0
        else: p1 = 1
        if (abs(x-gen[2])<=abs(x-gen[3])): p2 = 2
        else: p2 = 3

        #Seleccionar mejor y peor padre
        if (gen[p1]>gen[p2]):
            mejor_padre = gen[p1]
            peor_padre = gen[p2]
        print("#------")
        print(p1)
        print(p2)
        #Seleccionar mejor y peor hijo
        if (gen[0]>gen[1]):
            mejor_hijo = n[0]
            peor_hijo = n[1]
        else:
            mejor_hijo = n[1]
            peor_hijo = n[0]
        #generación de 4 hijos y selección de 2
        h1 = mejor_padre
        h2 = peor_hijo
        h3 = mejor_hijo
        h4 = peor_padre
        #mutación
        #h4 = random.randint(0,9999)

        #reemplazo
        gen[0] = h1
        gen[1] = h2
        gen[2] = h3
        gen[3] = h4
        print(gen)
        if i>0:
            break
 

array = [22,24,4,27] 
ag(array,1)