all:
	# cat 0*.md > paper.md
	Rscript -e "rmarkdown::render('paper.Rmd')"
	Rscript -e "rmarkdown::render( \
	                input = 'paper.Rmd', \
	                output_format = bookdown::html_document2( \
	                    toc = TRUE, \
	                    toc_depth = 3, \
	                    toc_float = TRUE, \
	                    number_sections = TRUE), \
	                output_file = 'docs/index.html' \
	                )"
