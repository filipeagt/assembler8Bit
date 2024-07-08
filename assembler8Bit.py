import sys

nomeArquivo =  sys.argv[1]

fonte = open(nomeArquivo, "r")
tmp = open('tmp.txt', 'w')

semComentario = ''

labels = {}

enderecosValidos = {'0H':'0', 
                    '1H':'1', 
                    '2H':'2', 
                    '3H':'3',
                    '4H':'4',
                    '5H':'5',
                    '6H':'6',
                    '7H':'7',
                    '8H':'8',
                    '9H':'9',
                    'AH':'10',
                    'BH':'11',
                    'CH':'12',
                    'DH':'13',
                    'EH':'14',
                    'FH':'15'}

nlinha = 0

for linha in fonte:
    if linha[0] != ';':        
        linha =  linha.split()
        for palavra in linha:
            palavra = palavra.upper() #Case insensitive
            if palavra[-1] == ':': #Tratamento das labels
                labels.update({palavra[:-1] : str(nlinha)})
                continue
            elif palavra[0] != ';': #Ignora os cometários
                semComentario += (palavra + ' ')
            else:
                break
        nlinha += 1    
        tmp.write(semComentario.rstrip() + '\n')
        semComentario = ''

tmp.close()

tmp = open('tmp.txt', 'r')

for linha in tmp:
    linha = linha.split()
    for palavra in linha:        
        if palavra in labels.keys():
            palavra = labels[palavra]
        elif palavra in enderecosValidos.keys():
            palavra = enderecosValidos[palavra]
        semComentario += (palavra + ' ')
    
    semComentario = semComentario.rstrip() + '\n'
tmp.close()

tmp = open('tmp.txt', 'w')
tmp.write(semComentario)
tmp.close()

fonte.close()

#assembler8bit.py

instructionSet = {'LDA':'0000', 
                  'LDI':'0001', 
                  'STA':'0010', 
                  'ADD':'0011',
                  'SUB':'0100',
                  'AND':'0101',
                  'ORL':'0110',
                  'XOR':'0111',
                  'NOT':'1000',
                  'SHL':'1001',
                  'SHR':'1010',
                  'JMP':'1011',
                  'JIC':'1100',
                  'JIM':'1101',
                  'JNZ':'1110',
                  'OUT':'1111'}

f = open("tmp.txt", "r")
obj = open(nomeArquivo[:-3] + "obj", "w")
i = 0
for line in f:
    line = line.split()        
    if line[0].isnumeric():
        obj.write(str(hex(i).upper())[2:] + ' ' + (bin(int(line[0]))[2:].zfill(8))[:4] + ' ' + (bin(int(line[0]))[2:].zfill(8))[4:]+ '\n')
    else:
        obj.write(str(hex(i).upper())[2:] + ' ' + instructionSet[line[0]] + ' ' + (bin(int(line[-1]))[2:].zfill(4) if line[-1].isnumeric() else 'XXXX') + '\n')
    
    i += 1

f.close()
obj.close()
