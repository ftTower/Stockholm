.SILENT:

PYTHON := python3
SCRIPT := stockholm.py
FILEKEY := filekey.key

clear:
	clear

clean: clear
	rm -rf filekey.key

encrypt: clear
	python3 ./$(SCRIPT) --version

reverse:
	python3 ./$(SCRIPT) --reverse "$(shell cat $(FILEKEY))" 

all : 

.PHONY: run