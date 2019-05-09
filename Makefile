all:
	# cat 0*.md > paper.md
	Rscript -e "rmarkdown::render('paper.Rmd')"
