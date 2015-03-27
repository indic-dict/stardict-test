STARDICT_TOOLS_DIR=~/stardict/tools/src/
TABFILE=$(STARDICT_TOOLS_DIR)/tabfile

ifndef dicts
	dicts="*"
endif

.PHONY: all stardict tars

all:stardict tars

stardict:
	eval $(TABFILE) $(dicts)/*.tsv
	eval dictunzip $(dicts)/*.dz

tars:
	bash ../bin/make_tarballs.sh https://github.com/vvasuki/stardict-sanskrit/raw/master/sa-head

