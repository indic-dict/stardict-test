STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile
DICT_TOOLS_BIN_BASH=~/dict-tools/bin/bash

# make all DICTS=xyz
DICTS=.*

URL=https://github.com/indic-dict/stardict-test/raw/gh-pages/tars

.PHONY: all stardict tars

all:stardict tars

stardict:
	bash $(DICT_TOOLS_BIN_BASH)/tsv_to_stardict.sh  DICTS=$(DICTS)


tars:
	bash $(DICT_TOOLS_BIN_BASH)/make_tarballs.sh  $(URL) DICTS=$(DICTS)

full:
	bash $(DICT_TOOLS_BIN_BASH)/full_build.sh  $(URL) DICTS=$(DICTS) GITHUB_TOKEN=$(GITHUB_TOKEN)