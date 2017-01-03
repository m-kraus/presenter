SRC=$(wildcard *.md)
HTML=$(subst .md,.html,$(SRC))
ASPECT=43
TEMPLATE=template/template.revealjs

OPTS=-t revealjs --template=$(TEMPLATE) --standalone --section-divs --variable theme="blood" --variable transition="none"

.PHONY: clean

all: $(HTML)

%.html: %.md
	@pandoc $(OPTS) -o $@ $<

clean:
	@rm -f $(HTML)

rebuild: clean all
