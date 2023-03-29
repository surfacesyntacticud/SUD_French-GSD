grew transform -grs /Users/perrier/recherche/SUD/SUD_tools/converter/grs/fr_SUD_to_UD.grs -strat FR_main_UDplus -config sud -i ../corpora/fr_gsd-sud-train_sud.conll -config sud -o ../corpora/fr_gsd-sud-train_ud+_sud.conll

grew transform -grs /Users/perrier/recherche/SUD/SUD_tools/converter/grs/fr_UD_to_SUD.grs -strat fr_main -config sud -i ../corpora/fr_gsd-sud-train_ud+_sud.conll -config sud -o ../corpora/fr_gsd-sud-train_sud_ud.conll

diff ../corpora/fr_gsd-sud-train_sud.conll  ../corpora/fr_gsd-sud-train_sud_ud.conll > ../corpora/diff_train.txt 

python3 epur.py

opendiff ../corpora/fr_gsd-sud-train_sud.conll ../corpora/fr_gsd-sud-train_sud_ud.conll &

