STARDICT_TOOLS_DIR=~/stardict/tools/src/
STARDICT_SANSKRIT_BIN=~/stardict-sanskrit/bin

# make all DICTS=xyz
DICTS=.*

.PHONY: all stardict tars

all:stardict tars

stardict:
	bash ~/stardict-sanskrit/bin/tsv_to_stardict.sh DICTS=$(DICTS)
