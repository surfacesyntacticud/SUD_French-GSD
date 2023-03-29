grew transform -config sud -grs retablir_form_init.grs -strat main  -i ../corpora/fr_gsd-sud-test_sud.conll -o ../corpora/fr_gsd-sud-test0_sud.conll 

opendiff ../corpora/fr_gsd-sud-test_sud.conll ../corpora/fr_gsd-sud-test0_sud.conll &

grew transform  -config sud -grs retablir_form_init.grs -strat main  -i ../corpora/fr_gsd-sud-dev_sud.conll -o ../corpora/fr_gsd-sud-dev0_sud.conll 

%opendiff ../corpora/fr_gsd-sud-dev_sud.conll ../corpora/fr_gsd-sud-dev0_sud.conll &

grew transform  -config sud -grs retablir_form_init.grs -strat main  -i ../corpora/fr_gsd-sud-train_sud.conll -o ../corpora/fr_gsd-sud-train0_sud.conll 
