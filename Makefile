PANDOC = pandoc -o
HTML_OPTS = -c style.css -A footer.html -t html5 -s --template resume.html5
TEX_OPTS = -H header.tex -A footer.tex --template resume.latex

pdf:
	$(PANDOC) resume.pdf $(TEX_OPTS) resume.md

latex:
	$(PANDOC) resume.tex $(TEX_OPTS) resume.md

html:
	$(PANDOC) resume.html $(HTML_OPTS) resume.md

clean:
	rm -f resume.html resume.pdf resume.tex

