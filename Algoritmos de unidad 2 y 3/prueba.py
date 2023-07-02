import pandas as pd

# Datos proporcionados
data = """NO,A,B,C,D,E
1,10.5,1,400.5,TRUE,N
2,9.8,5,405.8,FALSE,P
3,11.2,20,410.9,FALSE,P
4,9.2,60,425.4,FALSE,N
5,9.1,90,450.1,TRUE,P
6,10.8,120,500.5,TRUE,P
7,11.5,180,575.7,FALSE,N
8,11.2,220,456.5,TRUE,P
9,10.3,340,320.1,TRUE,N
10,9.7,410,221.9,FALSE,P"""

# Leer los datos en un DataFrame de pandas
df = pd.read_csv(pd.compat.StringIO(data))

# Filtrar columnas
df_filtered = df.drop('NO', axis=1)

# Convertir cada columna filtrada en un arreglo
column_arrays = []
for column in df_filtered:
    column_array = df_filtered[column].to_numpy()
    column_arrays.append(column_array)

# Imprimir los arreglos separados
for i, column_array in enumerate(column_arrays):
    print(f"Arreglo {i+1} ({df_filtered.columns[i]}):\n{column_array}\n")