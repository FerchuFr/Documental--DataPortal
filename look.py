import re
import pandas as pd

# Definir el archivo de entrada y de salida
input_file = 'C:/Users/admin/Documents/Documental -DataPortal/metrics.txt'
output_file = 'C:/Users/admin/Documents/Documental -DataPortal/metricas.xlsx'

# Leer el archivo de texto con codificación UTF-8
with open(input_file, 'r', encoding='utf-8') as file:
    text = file.read()

# Definir las expresiones regulares
measure_pattern = r'(?<=measure:\s).+?(?=\s\{)'
type_pattern = r'(?<=type:\s).+'
field_pattern = r'(?<=field:\s).+.'
label_pattern = r'(?<=label:\s").+?(?=")'
group_label_pattern = r'(?<=group_label:\s").+?(?=")'
description_pattern = r'(?<=description:\s).+'
sql_pattern = r'(?<=sql:\s).+?(?=;;)'
              

# Encontrar todas las coincidencias
measures = re.findall(measure_pattern, text)
types = re.findall(type_pattern, text)
field = re.findall(field_pattern, text)
labels = re.findall(label_pattern, text)
group_labels = re.findall(group_label_pattern, text)
descriptions = re.findall(description_pattern, text)
sqls = re.findall(sql_pattern, text)

# Asegurarse de que todas las listas tengan la misma longitud
max_length = max(len(measures), len(types), len(field), len(labels), len(group_labels), len(descriptions), len(sqls))

def pad_list(lst, length):
    return lst + [None] * (length - len(lst))

measures = pad_list(measures, max_length)
types = pad_list(types, max_length)
field = pad_list(field, max_length)
labels = pad_list(labels, max_length)
group_labels = pad_list(group_labels, max_length)
descriptions = pad_list(descriptions, max_length)
sqls = pad_list(sqls, max_length)

# Crear un DataFrame con los datos
data = {
    'Group Label': group_labels,
    'Measure': measures,
    'Type': types,
    'Field': field,
    'Label': labels,
    'Description': descriptions,
    'SQL': sqls
}


df = pd.DataFrame(data)

# Ajustar el índice para que comience en 1
df.index = df.index + 1

# Exportar el DataFrame a un archivo Excel con el índice
df.to_excel(output_file, index=True)

print(f'Datos exportados a {output_file} con índice comenzando en 1')