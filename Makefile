all:
	cat 0*.md > paper.md
	pandoc -H margins.sty --bibliography references.bib --csl plos.csl paper.md -o paper.pdf