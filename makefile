STARDICT_TOOLS_DIR=~/stardict/tools/src/
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash

# make all DICTS=xyz
DICTS=.*

.PHONY: all stardict tars

all:stardict tars

stardict:
	bash ~/stardict-sanskrit/bin/tsv_to_stardict.sh DICTS=$(DICTS)
