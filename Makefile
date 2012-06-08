#could be a4paper, b3paper, letterpaper, executivepaper, legalpaper
PAGESIZE=a5paper

all: prepare pdf


help:
	@echo make [tex,prepare,pdf,ps,clean] [PAGESIZE=a4paper,a5paper,b3paper,letterpaper,executivepaper,legalpaper]
	@echo Default is pdf PAGESIZE=a5paper

prepare:
	mkdir -p build

tex: prepare
	python _utils/rst2latex-highlight.py --documentoptions=$(PAGESIZE) --stylesheet=_utils/pygments-docutilsroles.sty --embed-stylesheet --no-section-numbering --documentclass=book src/index.rst > build/index.tex

dvi: tex
	cd build && latex index.tex && latex index.tex

ps: dvi
	cd build && dvips index.dvi
	mv build/index.ps book.ps

#should be compile twice for toc and bibl sections
pdf: tex
	cd build && pdflatex index.tex
	cd build && pdflatex index.tex
	mv build/index.pdf book.pdf


clean:
	rm -rf build
	rm -f book.ps book.pdf

