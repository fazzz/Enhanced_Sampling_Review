FILENAME = Enhanced_Sampling_Review
TEX      = platex
BIB      = pbibtex
DVIPS    = dvips
DVIPDF   = dvipdfmx

.PHONY: all clean remake tex bib fig pdf

all:
	make tex
	make tex
	make tex
	make tex
	make pdf

tex: 
	$(TEX) $(FILENAME).tex
bib: 
	$(BIB) $(FILENAME)
pdf: 
	$(DVIPDF) $(FILENAME).dvi

clean:
	rm  *.aux *.dvi *.log *.bbl *.blg *.pdf

remake: clean all

