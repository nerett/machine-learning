FILENAME = teormin
TMPDIR = /tmp/$(FILENAME)

all:
	mkdir -p $(TMPDIR)
	- pdflatex -output-directory $(TMPDIR) main.tex
	mv $(TMPDIR)/main.pdf ./${FILENAME}.pdf
	
clean:
	rm -R $(TMPDIR)
 
