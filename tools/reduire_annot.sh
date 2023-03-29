grew transform -config sud -grs reduire_annot.grs -strat main  -i ../corpora/fr_gsd-sud-test0_sud.conll -o ../corpora/fr_gsd-sud-test00_sud.conll 

opendiff ../corpora/fr_gsd-sud-test0_sud.conll ../corpora/fr_gsd-sud-test00_sud.conll &

grew transform  -config sud -grs reduire_annot.grs -strat main  -i ../corpora/fr_gsd-sud-dev0_sud.conll -o ../corpora/fr_gsd-sud-dev00_sud.conll 

%opendiff ../corpora/fr_gsd-sud-dev0_sud.conll ../corpora/fr_gsd-sud-dev00_sud.conll &

grew transform  -config sud -grs reduire_annot.grs -strat main  -i ../corpora/fr_gsd-sud-train0_sud.conll -o ../corpora/fr_gsd-sud-train00_sud.conll 
