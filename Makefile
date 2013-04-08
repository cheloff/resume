PANDOC = pandoc -o
STYLESHEET = -c style.css

pdf:
	$(PANDOC) resume.pdf $(STYLESHEET) resume.md

html:
	$(PANDOC) resume.html $(STYLESHEET) -t html5 -s resume.md

clean:
	rm -f resume.html resume.pdf

