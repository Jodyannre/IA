


w = 4
x = 6
y = 4
z = 6

res1 = 25*w-w**2
res2 = 25*x-x**2
res3 = 25*y-y**2
res4 = 25*z-z**2


print(res1)
print(res2)
print(res3)
print(res4)
print("***************")
res=res1+res2+res3+res4
print(res)
print(396/res)


bin_num = bin(res1)[2:]
bin_num2 = bin(res2)[2:]
bin_num3 = bin(res3)[2:]
bin_num4 = bin(res4)[2:]

print(bin_num)
print(bin_num2)
print(bin_num3)
print(bin_num4)

def binarios():
    numeros = [22, 24, 4, 27]
    resultados_binarios = []
    print("Si entro")
    for num in numeros:
        binario = bin(num)[2:]  # Se omite los primeros dos caracteres '0b' de la representación binaria
        resultados_binarios.append(binario)

    print(resultados_binarios)

binarios()


