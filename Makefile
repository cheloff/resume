PANDOC = pandoc -o

SOURCE = resume.md
TARGET = resume
TEMPLATE = --template templates/resume
FOOTER = -A partials/footer
STYLE = styles/style

HTML_OPTS = -c $(STYLE).css $(FOOTER).html -t html5 -s $(TEMPLATE).html5
TEX_OPTS = -H $(STYLE).tex $(FOOTER).tex $(TEMPLATE).latex

all: pdf latex html

pdf:
	$(PANDOC) $(TARGET).pdf $(TEX_OPTS) $(SOURCE)

latex:
	$(PANDOC) $(TARGET).tex $(TEX_OPTS) $(SOURCE)

html:
	$(PANDOC) $(TARGET).html $(HTML_OPTS) $(SOURCE)

clean:
	rm -f $(TARGET).html $(TARGET).pdf $(TARGET).tex

