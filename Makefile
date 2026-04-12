.PHONY: pdf html all clean
.DEFAULT_GOAL := all

# Build the PDF (latexmk from main.tex)
pdf:
	latexmk -pdf main.tex

# Convert LaTeX sources to Quarto .qmd, then render HTML book
html:
	python3 scripts/tex2qmd.py --all
	quarto render

# Build both
all: pdf html

clean:
	latexmk -C main.tex
	rm -rf _site
