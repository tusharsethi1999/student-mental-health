import sys

filename = sys.argv[1]
columns = ''
with open(filename, 'r') as file:
    for line in file:
        line = line.replace('\n', '')
        columns += line + ', '

filename = filename.replace('.txt', '-python.txt')
with open(filename, 'a') as file:
    file.write(columns)
