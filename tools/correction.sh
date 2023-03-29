grew transform -config sud -grs correction.grs -strat main  -i ../corpora/fr_gsd-sud-test_sud.conll -o ../corpora/fr_gsd-sud-test1_sud.conll 

opendiff ../corpora/fr_gsd-sud-test_sud.conll ../corpora/fr_gsd-sud-test1_sud.conll &

grew transform  -config sud -grs correction.grs -strat main  -i ../corpora/fr_gsd-sud-dev_sud.conll -o ../corpora/fr_gsd-sud-dev1_sud.conll 

opendiff ../corpora/fr_gsd-sud-dev_sud.conll ../corpora/fr_gsd-sud-dev1_sud.conll &

grew transform  -config sud -grs correction.grs -strat main  -i ../corpora/fr_gsd-sud-train_sud.conll -o ../corpora/fr_gsd-sud-train1_sud.conll 
