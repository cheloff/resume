PANDOC = pandoc -o
STYLESHEET = -c style.css
TEX = -H header.tex

pdf:
	$(PANDOC) resume.pdf $(TEX) resume.md

html:
	$(PANDOC) resume.html $(STYLESHEET) -t html5 -s resume.md

latex:
	$(PANDOC) resume.tex $(TEX) resume.md

clean:
	rm -f resume.html resume.pdf resume.tex

