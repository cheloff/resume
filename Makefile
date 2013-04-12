PANDOC = pandoc -o

TEMPLATE = --template templates/resume
FOOTER = -A partials/footer
STYLE = styles/style

HTML_OPTS = -c $(STYLE).css $(FOOTER).html -t html5 -s $(TEMPLATE).html5
TEX_OPTS = -H $(STYLE).tex $(FOOTER).tex --template templates/resume.latex

pdf:
	$(PANDOC) resume.pdf $(TEX_OPTS) resume.md

latex:
	$(PANDOC) resume.tex $(TEX_OPTS) resume.md

html:
	$(PANDOC) resume.html $(HTML_OPTS) resume.md

clean:
	rm -f resume.html resume.pdf resume.tex

