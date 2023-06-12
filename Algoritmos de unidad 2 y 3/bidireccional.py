
contador = 0

def inc():
    global contador
    contador += 1
    return contador


def succesors(n):
    if n[0] == 1: return [[2,n[1]+1,inc()], [5,n[1]+1,inc()]]
    elif n[0] == 2: return [[1,n[1]+1,inc()], [3,n[1]+1,inc()]]
    elif n[0] == 3: return [[2,n[1]+1,inc()], [4,n[1]+1,inc()]]
    elif n[0] == 4: return [[3,n[1]+1,inc()], [7,n[1]+1,inc()]]
    elif n[0] == 5: return [[1,n[1]+1,inc()], [2,n[1]+1,inc()]]
    elif n[0] == 6: return [[1,n[1]+1,inc()], [2,n[1]+1,inc()]]
    elif n[0] == 7: return [[2,n[1]+1,inc()], [3,n[1]+1,inc()]]
    elif n[0] == 8: return [[3,n[1]+1,inc()], [4,n[1]+1,inc()]]
    elif n[0] == 9: return [[5,n[1]+1,inc()], [6,n[1]+1,inc()]]
    elif n[0] == 10: return [[5,n[1]+1,inc()], [6,n[1]+1,inc()]]
    elif n[0] == 11: return [[6,n[1]+1,inc()], [7,n[1]+1,inc()]]
    elif n[0] == 12: return [[7,n[1]+1,inc()], [8,n[1]+1,inc()]]
    elif n[0] == 13: return [[9,n[1]+1,inc()], [10,n[1]+1,inc()]]
    elif n[0] == 14: return [[9,n[1]+1,inc()], [10,n[1]+1,inc()]]
    elif n[0] == 15: return [[10,n[1]+1,inc()], [11,n[1]+1,inc()]]
    elif n[0] == 16: return [[11,n[1]+1,inc()], [12,n[1]+1,inc()]]
    else: return None
            



def bidireccional (node_inicio, nodo_fin):
    front = [node_inicio]
    back = [nodo_fin]
    while front or back:
        nfront = front.pop(0)
        nback = back.pop(0)
        print (nfront)
        print (nback)
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
    print("NO-SOLUCIÓN")



bidireccional([1,0,0],[12,0,0])