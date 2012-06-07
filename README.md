rst-booker
==========

RST Booker ease book creation from RestructuredText format via LaTeX

It allows you to use syntax highlights for commons languages (c, python, php, go, java...) in you book and don't have any problem for footnotes as rst2pdf command does. We use LaTeX to compile the output book.  

Installation - Usage
--------------------

Install python-pygment and dvips on your system (common packages are in actual linux distributions)

Get package from this page, or use git to clone repository. You now have some files and directories.


That's all :)

You can try to compile documentation ps file or pdf file using this commands from your working directory:

    make
    or if you want pds
    make pdf

Cleanup your build directory and output files with:
    
    make clean


Read documentation (from src/example.rst or compiling the book with above commands). Everything you need is theorically in this document.



