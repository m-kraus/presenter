SRC=$(wildcard *.md)
PDF=$(subst .md,.pdf,$(SRC))
ASPECT=43
TEMPLATE=Template/my.beamer.tex

THEME_OPTIONS="background=light,titleformat=allcaps,progressbar=frametitle"
OPTS=-t beamer --template=$(TEMPLATE) --variable lang=german --variable classoption=aspectratio=$(ASPECT) --latex-engine=xelatex --no-tex-ligatures --include-in-header Template/my.header.tex --variable theme=metropolis --variable themeoptions=$(THEME_OPTIONS) --slide-level 2

.PHONY: clean

all: $(PDF)

%.pdf: %.md
	@pandoc $(OPTS) -o $@ $<

clean:
	@rm -f $(PDF)

rebuild: clean all
