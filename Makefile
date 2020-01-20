all:
	# cat 0*.md > paper.md
	Rscript -e "rmarkdown::render('paper.Rmd')"
	Rscript -e "rmarkdown::render( \
	                input = 'paper.Rmd', \
	                output_format = bookdown::html_document2( \
	                    number_sections = TRUE, \
	                    base_format = rmdformats::material), \
	                output_file = 'docs/index.html' \
	                )"
