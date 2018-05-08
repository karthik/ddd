
# Introduction

- Importance of data sharing in research and data science
- Various use cases for the data (teaching, training models, research applications)

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
# Releasing data in R

- One should only release data inside a R package if the primary audience is R users. Examples of such cases include those with an interest in the subject matter area, or the data itself for purposes such as teaching or training (Wickham 2016)


### Advantages of including data inside R packages
- Easy to share via CRAN's distributed network
- documentation comes included
  
Disadvantages:
- This becomes R specific and excludes users from other languages and interfaces
- Citation and attribution become problematic.  

### Technical advice for R users
- If the aim of your data sharing is also to encourage users to understand the process of munging (i.e. transforming messy, raw data into clean analyzable data), include the raw data files in `inst/extdata` and provide scripts (or functions) that will transform such data into usable form. The vignette (R's long-form package documentation) would be ideal for walking users through the thought process behind one's data transformation efforts. 
- If the primary purpose is to provide example datasets for purposes such as illustrating statistical methods, computational methods, or for similar uses, you may place binary data in the `data/` folder of the package structure. The binary format is important because CRAN imposes strict limits on package sizes. The general rule of thumb is that a package cannot exceed 5mb (code, documentation, and data included) (https://cran.r-project.org/web/packages/policies.html). For cases when this size is hard to maintain, CRAN recommends data-only packages that will be rarely updated. We do not recommend this practice for various reasons. For a detailed discussion on this issue, see Anderson and Eddelbuettel (2017)
- Another R specific solution is to host data using the `drat` package and accessing it via packages of small size. The location of the data is user-controlled and can be published for free on GitHub which has a size limit of 1gb (compared to CRANs 5 mb limit).
		- This solution is not general purpose since `drat` cannot be listed as an `Imports` or `Depends`.


**References:**

- Data chapter from Hadley's R Packages book (which I reviewed) http://r-pkgs.had.co.nz/data.html
- https://journal.r-project.org/archive/2017/RJ-2017-026/RJ-2017-026.pdf# Licensing

Data with a license clearly establishes rules on how everyone can modify, use, and share data. Without a license, these rules are unclear, and can lead to attribution and citation problems. The world of licenses is big and complex, and choosing one can lead to decision paralysis. There are, however two licenses that are well suited for data sharing:

1. Creative Commons Attribution 4.0 International Public License (CC BY), and
2. Creative Commons CC0 1.0 Universal (CC0)

**CC BY**

In short, CC BY means that data can be shared and adapted, even for commercial use. However, you are required to provide appropriate credit to the source, link back to the CC BY license, and clearly show if changes were made. Data cannot be sublicensed, there is no warranty, and the person/people who obtained the data cannot be held liable. Appropriate credit means that you list the names of the creators, and link back to the original source. For a brief overview of the CC BY, see @ccby-short, and for the full license, see @ccby-long. The CC BY enforces attribution and due credit by default, but gives a lot of freedom for its use. The journal PLOS Comp Bio requires that data submitted cannot be more restrictive than CC BY [@plot-comp-bio-data].

**CC0**
Contrasting the CC BY, is the CC0. Briefly, CC0 is a “public domain” license. The data owners waive all their rights to the work, and it now "owned" by the public. The data can be copied, modified, and distributed, even for commercial purposes _without asking permission_. This license does not enforce the attribution and due credit, but does mean that the data can be freely shared. If you use someone else's data with CC0, it would be good practice to cite the original paper, but you do not need to. For a brief overview of the CC0, see @cc0-short, and for the full license, see

**Copyrighted data**

**Data Embaro**


**How to add a license to your data?**

- Is this just a LICENSE file in the folder? Is there other, additional information needed?

References:

@plos-comp-bio-data: http://journals.plos.org/ploscompbiol/s/licenses-and-copyright

@ccby-short: https://creativecommons.org/licenses/by/4.0/
@ccby-long: https://creativecommons.org/licenses/by/4.0/legalcode
@cc0-short: https://creativecommons.org/publicdomain/zero/1.0/
@cc0-long: https://creativecommons.org/publicdomain/zero/1.0/legalcode

@tldr-legal: https://tldrlegal.com/
@creative-commons: https://creativecommons.org/
@cc-data: https://wiki.creativecommons.org/wiki/Data

**need to read over these case studies for CC0 and CC use for data**

- https://wiki.creativecommons.org/wiki/Data_and_CC_licenses
- https://wiki.creativecommons.org/wiki/CC0_use_for_data
# Data Sharing in Julia and Python

Sharing data in a programming language happens to some extent in other languages. We discuss how Julia and Python share and distribute data in the following section.

# Julia

Julia was established in ...,
Searching [METADATA.jl](https://github.com/JuliaLang/METADATA.jl) to find packages mentioning data reveals that there are three main categories of data packages in Julia:

1. [Database access](https://github.com/JuliaDatabases) for services like MySQL, Hive, and ODBC, similar to [R’s DBI organisation](https://github.com/r-dbi).
2. Accessing data online via APIs, such as [accessing the weather source NOAA](https://github.com/pazzo83/NOAAData.jl .
3. Data is provided directly. For example, [accessing Econometric datasets](https://juliafinmetrix.github.io/EconDatasets.jl/#sec-1), [face datasets](https://github.com/dfdx/FaceDatasets.jl), [Market data](https://marketdata.readthedocs.io/en/latest/), and [R datasets](https://github.com/johnmyleswhite/RDatasets.jl).

It is telling that the datasets provided in R are useful, as there is even a Julia package, RDatasets that provides over 700 datasets from R packages. There are also packages for Accessing datasets used in [vega](https://github.com/davidanthoff/VegaDatasets.jl), for accessing common [machine learning datasets](https://github.com/JuliaML/MLDatasets.jl). There are also packages for [generating fake data](https://github.com/codeneomatrix/Faker.jl), for which there are at least two R packages that do this ([charlatan](https://github.com/ropensci/charlatan), and [wakefield](https://github.com/trinker/wakefield)).

# Python

Python is a popular general purpose language, used in engineering, statistics, and more.

> Mention Data packages (as a possible path). I worked with open knowledge foundation to bring this to R. For a brief time ropensci maintained the package. The data package standard does have limitations

# References

- I need to work out how many of these links I'm going to use before I cite them all down here
# Publishing and repositories

# Ten simple rules for publishing data

1.
2.
3.
4.
5.
6.
7.
8.
9.
10.


# Conclusions