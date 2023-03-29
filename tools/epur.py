import os,re,codecs,shutil
path = '/Users/perrier/recherche/SUD/SUD_French-GSD/corpora'
finput=codecs.open(path +'/diff_train.txt', mode='r', encoding='utf-8')
lines= finput.readlines()
finput.close()
nb_lines= len(lines)
foutput= codecs.open(path +'/diff_train_epure.txt', mode='w', encoding='utf-8')
#nb_lines= 100
n=0
while n < nb_lines:
    #print(lines[n])
    conj=True
    mod=True
    m=n+1
    l=lines[m]
    while l[:3] != u'---':
        elts =l.split('\t')
        rel= elts[7]
        gov1= elts[6]
        if rel != u'conj':
            conj=False
        if rel != u'mod' and rel != u'udep':
            mod=False
        m +=1
        l=lines[m]
    for i in range(m+1, m+m-n):
        l=lines[i]
        elts =l.split('\t')
        rel= elts[7]
        gov2= elts[6]
        if rel != u'conj':
            conj=False
        if rel != u'mod' and rel != u'udep':
            mod=False           
    #print(conj)
    if conj ==False:
        if mod== False or (mod==True and gov1 != gov2):
            for i in range(n, 2*m-n):
                foutput.write(lines[i])
            foutput.write('\n')
    n += 2*(m-n)
foutput.close()
