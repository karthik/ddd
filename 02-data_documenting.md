# How to document your dataset

Documenting a dataset is ensures others understand why the data was collected, how it was used, and how to use it appropriately. A .csv file alone in a folder with no other information is unhelpful. By the same token, providing too much information can make it difficult to understand, and where to start. There is a **da**ta **re**usability **co**ntinuum (DARECO). At one end there is a plain text or perhaps proprietary format file alone in a folder, towards the middle there is an accompanying human readable README file that describes the data and a machine readable format for reading in the data, and at the far end is the complete information to completely reproduce the data, intructions, motivation, manual, and so on.

_figure of the continuum from only data, to data + readme + machine readable code + full instruction set_

Researchers and analysts should aim to be at the "good enough" as the new minimum: A README with human context, machine readable statement of variables, and the raw data. Some examples of data documentation are now discussed, and ranked on the DARECO.

## EML

The Ecological Metadata Language (EML) is stated as ([on their website](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html))
The EML project is an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data. This is at one end of the "Data reproducibility spectrum"
There is an R interface to this: https://github.com/ropensci/EML

## Journal "Data papers"

Journals are now adding "data papers", specifically designed for publishing and sharing data. These provide more information and context around, crucial to understanding the data structure.

For example, **Elsevier's Data In Brief** aims to provide an outlet where researchers can easily share and reuse data by publishing articles about the data to improve reproducibility, enhance discoverability by taking it out of the supplementary materials, increase traffic and citations to both the research articles and the data, pave the way for collaborations. They welcome data from all research areas.

The requirements of Data In Brief are similar to research articles, requiring a title, author list, afiliations, abstract, and references. They also require several clear bullet points explaining why the data is useful to others, a direct link to the data, a complete description of the design, materials, and methods, and a specifications table.

Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The Completed specifications table details information on subject area, data type (image, table, text file, graph),the data format (raw, filtered, analysed), how the data was acquired, related articles, data accessibility (it is in a public repo etc), and features of the experimental factors and features, and related research article.

Whilst this is useful, the structure it provides is very flexible, and doesn't tell the researcher/analyst how to actually structure the data and folders. It doesn't tell them how to do it, just provides some good ideas on what they should include.

It does not solve _PROBLEM STATEMENT_

For example, it does not provide the same resolution of information as a Data Dictionary.

As another example, Elsevier's guidelines on "a complete description of the experimental design and materials and methods", state that:

> Offer a complete description of the experimental design and methods used to acquire the data and, where applicable, to perform the analysis. Include any relevant figures and tables needed to understand the data fully. Please also provide, where applicable, any code files used for base-level analysis or filtering of the data

- This is a good standard, but it does not provide explicit instructions.

**License for "data in brief"**

It is unclear what the license for data in brief is, is appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses). Finally, to provide open access, this journal has an open access fee

# What goes in the README

The README is a catch-all place for most things - but it is primarily front-facing, it is meant for a human to read and understand more about the data. It should contain links to the license, notes on any additional changes to the data (if any), or

# Documenting using code books

There are also other formats, such as data dictionaries or code books, which are recommended for use when sharing data @Ellis2017. These "codebooks" are provided in STATA, which provides a "codebook" command. This allows you to describe the data, using a set of commands.

Some examples of "Codebooks" for data include `codemeta` and ...
