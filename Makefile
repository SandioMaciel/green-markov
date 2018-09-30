all:
	pdflatex main.tex
	#kpdf first.pdf
	#make clean

docker:
	docker container run --rm -v `pwd`:/latex latex pdflatex main.tex

clean:
	rm -f *~ *.aux *.sty *.out *.backup *.tcp *.tps *.sty *.toc *.log *.lot *.bbl\
				*.blg *.lof *.dvi *.ind *.idx *.ilg *.snm *.nav *.vrb

cleanpdf:
	rm *.pdf
