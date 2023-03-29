import os,re,codecs,shutil
path = '/Users/perrier/recherche/Universal_Dependencies/SUD/SUD_French-GSD'
finput=codecs.open(path +'/lexiqueFR-GSD.txt', mode='r', encoding='utf-8')
lines= finput.readlines()
finput.close()
nb_lines= len(lines)
foutput= codecs.open(path +'/adj_neutr_gender.txt', mode='w', encoding='utf-8')
#nb_lines= 100
n=0
while n < nb_lines:
    l=lines[n]
    elts =l.split('\t')
    if elts[2] == u'ADJ' and elts[1][-1] == u'e':
        foutput.write(elts[1]+u'\n')
    n += 1
foutput.close()
