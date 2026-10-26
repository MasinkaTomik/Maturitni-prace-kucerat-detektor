NAME=kucera_tomas_8.E
LATEX=xelatex
BIBTEX=bibtex
BUILD_DIR=build
PDF_DIR=PDF

$(PDF_DIR)/$(NAME).pdf: $(NAME).tex
	mkdir -p $(BUILD_DIR) $(PDF_DIR)
	latexmk -xelatex -outdir=$(BUILD_DIR) $(NAME).tex
	cp $(BUILD_DIR)/$(NAME).pdf $(PDF_DIR)/$(NAME).pdf

clean:
	rm -rf $(BUILD_DIR)

mrproper: clean
	rm -rf $(PDF_DIR)

install:
	sudo apt-get install texlive-xetex texlive-lang-czechslovak texlive-science \
	     texlive-fonts-extra texlive-latex-extra latexmk biber
