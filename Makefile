TARGET=paper

all: pdf

pdf:
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex
	bibtex $(TARGET)
	pdflatex $(TARGET).tex

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf *.toc *.lof *.lot *.dvi *.ps *.brf *.spl *.synctex.gz *.fdb_latexmk *.fls *.bcf *.run.xml

cleanall: clean
	latexmk -C
	rm -f paper.bbl
