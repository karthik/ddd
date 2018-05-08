# How to document your dataset

Documenting a dataset is critical to ensuring that others can understand the data and use it appropriately. It is unhelpful to provide only a dataset, with no other information. To some extend, providing too much information can make things difficult to understand the context quickly. There is a continuum, which we refer to as the "Data reusability spectrum (DARES?)". At the bare minimum there should be a README file that describes the data in some way. At the idea, there is the README with some context, plus some machine readable, standardized description of the types of each of the variables in the data.


## EML

The Ecological Metadata Language (EML) is stated as ([on their website](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html))
The EML project is an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline
EML provides a very highly structured approach to documenting data. This is at one end of the "Data reproducibility spectrum"
There is an R interface to this: https://github.com/ropensci/EML

## Journal "Data papers"

Journals are now adding "data papers", which are papers specifically designed for publishing and sharing data. These provide more information and context around the data, which is crucial to understanding the data structure.

Below I have some notes on Elsevier's Data In Brief.

**Elsevier's Data In Brief**

> Data in Brief provides a way for researchers to easily share and reuse each other's datasets by publishing data articles that:

    > - Thoroughly describe your data, facilitating reproducibility.
    > - Make your data, which is often buried in supplementary material, easier to find.
    > - Increase traffic towards associated research articles and data, leading to more citations.
    > - Open up doors for new collaborations.
    > - Because you never know what data will be useful to someone else, Data in Brief welcomes submissions that describe data from all research areas."

**Here are the sections of a "Data In Brief" article:**

- Title, authors and author affiliations
- Abstract
- A completed Specifications Table
- 3-5 bullet points that explain why the data is valuable to other researchers
- A direct link to the deposited data (when applicable)
- A complete description of the experimental design and materials and methods
- References

Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The Completed specifications table is listed in bullet form here:

- Subject area
        - E.g., physics, chemistry, biology, economics, psychology
- More specific subject area
        - Describe narrower subject area.
- Type of data
                - Table, image (x-ray, microscopy, etc.), text file, graph, figure
- How data was acquired
                - Microscope, survey, SEM, NMR, mass spectrometry, etc.; if an instrument was used, please give the model and make.
- Data format
                - Raw, filtered, analyzed, etc.
- Experimental factors
                - Brief description of any pretreatment of samples
- Experimental features
                - Very brief experimental description
- Data source location
                - City, country, and/or latitude and longitude (and GPS coordinates) for collected samples/data, if applicable
- Data accessibility
                - State if data is with this article or in public repository; if public repository, please explicitly name repository and data identification number, and provide a direct URL to data.
- Related research article
                - If your data article is submitted as a companion paper to a research article, please cite your associated research article here; you may reference this as "in press."
                - If this is a direct submission to Data in Brief, you may cite the most relevant research article here.

Whilst this table provides a good standard, it does not provide the same resolution of information as a Data Dictionary.

**Complete description of the experimental design and materials and methods**.

> Offer a complete description of the experimental design and methods used to acquire the data and, where applicable, to perform the analysis. Include any relevant figures and tables needed to understand the data fully. Please also provide, where applicable, any code files used for base-level analysis or filtering of the data

- This is a good standard, but I can’t help but think that this could be more explicitly expanded.

**License for "data in brief"**

- seems to be CC-BY
- However....upon acceptance of an article, authors will be asked to complete an 'Exclusive License Agreement' (see [more information](https://www.elsevier.com/about/our-business/policies/copyright) on this). Permitted third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses).
- ...This is an open access journal: all articles will be immediately and permanently free for everyone to read and download. To provide open access, this journal has an open access fee (also known as an article publishing charge APC) which needs to be paid by the authors or on their behalf e.g. by their research funder or institution. Permitted third party (re)use is defined by the following Creative Commons user licenses: CC BY

# Documenting using code books

There are also other formats, such as data dictionaries or code books, which are recommended for use when sharing data @Ellis2017. These "codebooks" are provided in STATA, which provides a "codebook" command. This allows you to describe the data, using a set of commands.