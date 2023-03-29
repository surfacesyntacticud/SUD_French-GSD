grew transform -grs /Users/perrier/recherche/SUD/SUD_tools/converter/grs/fr_SUD_to_UD.grs -strat FR_main_UDplus -config sud -i ../corpora/fr_gsd-sud-dev_sud.conll -config sud -o ../corpora/fr_gsd-sud-dev_ud+_sud.conll

grew transform -grs /Users/perrier/recherche/SUD/SUD_tools/converter/grs/fr_UD_to_SUD.grs -strat fr_main -config sud -i ../corpora/fr_gsd-sud-dev_ud+_sud.conll -config sud -o ../corpora/fr_gsd-sud-dev_sud_ud.conll

opendiff ../corpora/fr_gsd-sud-dev_sud.conll  ../corpora/fr_gsd-sud-dev_sud_ud.conll&
