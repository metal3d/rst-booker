

all: prepare pdf

prepare:
	mkdir -p build

tex: prepare
	python _utils/rst2latex-highlight.py --stylesheet=_utils/pygments-docutilsroles.sty --embed-stylesheet --no-section-numbering --documentclass=book src/index.rst > build/index.tex

dvi: tex
	cd build && latex index.tex && latex index.tex

ps: dvi
	cd build && dvips index.dvi
	mv build/index.ps book.ps

pdf: ps
	cp book.ps book-tmp.ps
	ps2pdf book-tmp.ps book.pdf
	rm -f book-tmp.ps


clean:
	rm -rf build
	rm -f book.ps book.pdf

