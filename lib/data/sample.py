filename = "title.basics.tsv"
fl = open(filename, "r")
for l in fl:
    cols = l.split('\t')
    print(cols)
for genre in cols:
    print(genre)
