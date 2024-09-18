import re
#import pandas as pd

df = 'C:/Users/admin/Documents/Documental -DataPortal/metrics.txt'
#df1 = 'C:/Users/admin/Documents/Documental -DataPortal/metrics.csv'
#df = pd.read_csv('C:/Users/admin/Documents/Documental -DataPortal/metrics.csv')
#df
with open(df) as text:
    #lines = df_obj.readlines()
    #print(lines)
       
    for line in text:
       #text = text.readlines()
      
       text = text.read()
       #print(text)

       #print (line.rstrip())




    #regular expression
    measure = r'(?<=measure:\s).+?(?=\s\{)'
    type = r'(?<=type:\s).+'
    label = r'(?<=label:\s").+?(?=")'
    group_label = r'(?<=group_label:\s").+?(?=")'
    description = r'(?<=description:\s).+'
    sql = r'(?<=sql:\s").+?(?=;;)'

    #extracted information using regular expression

    measure_match = re.search(measure, text)
    type_match = re.search(type, text) 
    label_match = re.search(label, text) 
    group_label_match = re.search(group_label, text) 
    description_match = re.search(description, text)
    sql_match = re.search(sql, text)


    #extracted information
    measure = measure_match.group() if measure_match else None
    type = type_match.group() if type_match else None
    label = label_match.group() if label_match else None
    group_label = group_label_match.group() if group_label_match else None
    description = description_match.group() if description_match else None
    sql = sql_match.group() if sql_match else None


    print(f'measure: {measure}')
    print(f'type: {type}')
    print(f'label: {label}')
    print(f'group_label: {group_label}')
    print(f'description: {description}')
    print(f'sql: {sql}')

