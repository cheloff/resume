PANDOC = pandoc -o
HTML_OPTS = -c style.css -t html5 -s
STYLESHEET = -c style.css
TEX = -H header.tex

pdf:
	$(PANDOC) resume.pdf $(TEX) resume.md

html:
	$(PANDOC) resume.html $(HTML_OPTS) resume.md

latex:
	$(PANDOC) resume.tex $(TEX) resume.md

clean:
	rm -f resume.html resume.pdf resume.tex

