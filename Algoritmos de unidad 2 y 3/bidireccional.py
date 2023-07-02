
contador = 0

def inc():
    global contador
    contador += 1
    return contador


def succesors(n):
    if n == 1: return [2,5,6]
    elif n == 2: return [1,3,5,6,7]
    elif n == 3: return [2,4,6,7,8]
    elif n == 4: return [3,7,8]
    elif n == 5: return [1,2,6,9,10]
    elif n == 6: return [1,2,3,5,7,9,10,11]
    elif n == 7: return [2,3,4,6,8,10,11,12]
    elif n == 8: return [3,4,7,11,12]
    elif n == 9: return [5,6,10,13,14]
    elif n == 10: return [5,6,7,9,11,13,14,15]
    elif n == 11: return [6,7,8,10,12,14,15,16]
    elif n == 12: return [7,8,11,15,16]
    elif n == 13: return [9,10,14]
    elif n == 14: return [9,10,11,13,15]
    elif n == 15: return [10,11,12,14,16]
    elif n == 16: return [11,12,15]
    else: return None

'''
def succesors(n):
    if n[0]==1: return [[2,n[1]+1,inc()],[3,n[1]+1,inc()],[4,n[1]+1,inc()]]
    elif n[0]==2: return [[1,n[1]+1,inc()],[4,n[1]+1,inc()],[5,n[1]+1,inc()]]
    elif n[0]==3: return [[1,n[1]+1,inc()],[4,n[1]+1,inc()],[6,n[1]+1,inc()]]
    elif n[0]==4: return [[1,n[1]+1,inc()],[2,n[1]+1,inc()],[3,n[1]+1,inc()]
                         ,[5,n[1]+1,inc()],[6,n[1]+1,inc()],[7,n[1]+1,inc()]]
    elif n[0]==5: return [[2,n[1]+1,inc()],[4,n[1]+1,inc()],[7,n[1]+1,inc()]]
    elif n[0]==6: return [[3,n[1]+1,inc()],[4,n[1]+1,inc()],[7,n[1]+1,inc()]]
    elif n[0]==7: return [[4,n[1]+1,inc()],[5,n[1]+1,inc()],[6,n[1]+1,inc()]]
'''

'''
def succesors(n):
    if n==1: return [2,3,4]
    elif n==2: return [1,4,5]
    elif n==3: return [1,4,6]
    elif n==4: return [1,2,3,5,6,7]
    elif n==5: return [2,4,7]
    elif n==6: return [3,4,7]
    elif n==7: return [4,5,6]
'''


def bidireccional (node_inicio, nodo_fin):
    seguridad=0
    front = [node_inicio]
    back = [nodo_fin]
    while front or back:
        seguridad+=1
        nfront = front.pop(0)
        nback = back.pop(0)
        print ("adelante: ",nfront)
        print ("atras: ",nback)
        if nfront in back and nback in front:
            if back.index(nfront)<front.index(nback):
                print(str(nfront)+" comun")
                return
            else:
                print(str(nback)+" comun")
                return
        elif nfront in back:
            print(str(nfront)+" comun")
            return
        elif nback in front:
            print(str(nback)+" comun")
            return
        front.extend(succesors(nfront))
        print(front)
        back.extend(succesors(nback))
        print(back)
        if seguridad>10:
            break
    print("NO-SOLUCIÓN")



bidireccional(1,16)