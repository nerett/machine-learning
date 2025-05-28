FILENAME = teormin
TMPDIR = /tmp/$(LABNUM)

all:
	mkdir -p $(TMPDIR)
	- pdflatex -output-directory $(TMPDIR) main.tex
	mv $(TMPDIR)/main.pdf ./${FILENAME}.pdf
	
clean:
	rm -R $(TMPDIR)
 
