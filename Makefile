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
arxiv:
	mkdir arxiv
	mkdir arxiv/figures
	mkdir arxiv/data
	cp figures/directory-structure.png arxiv/figures/
	cp figures/json-code.png arxiv/figures/
	cp figures/data_sharing_workflow.png arxiv/figures/
	cp figures/sdss-raw-data-screenshot.png arxiv/figures/
	   
	cp data/plateid-1678_mjd-53433_fiberid-425_reduction2d-v5_7_0.csv arxiv/data/
	cp paper.Rmd references.bib preamble.tex arxiv/
	Rscript -e "rmarkdown::render('arxiv/paper.Rmd')"
	# tar -czvf submission.tar.gz  arxiv/.
	# rm -r arxiv

