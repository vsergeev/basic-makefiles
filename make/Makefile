PROJECT=basic-makefiles

all: $(PROJECT).pdf

%.pdf: %.tex
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

view: $(PROJECT).pdf
	evince $(PROJECT).pdf

clean:
	rm -f *.aux $(PROJECT).pdf $(PROJECT).log $(PROJECT).out $(PROJECT).pyg *-converted-to.pdf *.bbl *.blg *.lot *.lof *.toc *.nav *.snm *.vrb

