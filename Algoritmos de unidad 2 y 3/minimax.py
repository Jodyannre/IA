import random
import string

def succ(node):
	return [
        [random.choice(string.ascii_uppercase), random.randint(0, 20),""],
        [random.choice(string.ascii_uppercase), random.randint(0, 20),""],
        [random.choice(string.ascii_uppercase), random.randint(0, 20),""]]

def minimax(node,depth,m):
	if depth == 0:
		return node
	if m:
		temp = succ(node[0])
		print(temp)
		maxi = -999
		while temp:
			child = temp.pop(0)
			h = minimax(child,depth-1,False)
			if h[1] > maxi:
				best = child
				maxi = best[1]
		node[1] = best[1]
		node[2] = best[0]
		return node
	else:
		temp = succ(node[0])
		mini = 999
		print(temp)
		while temp:
			child = temp.pop(0)
			h = minimax(child,depth-1,True)
			if h[1] < mini:
				#print(h)
				best = child
				mini = best[1]
		node[1] = best[1]
		node[2] = best[0]
		return node
	
    
print(minimax(["A",1,""],2,True))