all:
	# cat 0*.md > paper.md
	Rscript -e "knitr::knit('paper.Rmd')"
	pandoc -H margins.sty  --pdf-engine=xelatex --template=default.latex paper.md -o paper.pdf