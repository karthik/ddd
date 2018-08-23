# How to document your dataset

The main benefit of sharing data is so that others can verify your results, learn from your analysis, and perhaps extend findings to other areas, and advance the field. Sharing your data helps other people stand on your shoulders, to look further into different problems. In order to share data, it needs to be documented. Documenting a dataset ensures others understand why the data was collected, what it was used for, and how to use it appropriately. There are different ways to provide data and the context around it. Very little information is unhelpful, for example, a `csv` file alone in a folder with no other information. Equally, too much information can make it difficult to parse and to know where to start. For example, an entire folder with dozens of data files and several papers written on the topic. To help us frame our thinking around data documenting and reusability we can think of data reusability falling on a continuum, which we call the DARECO: **da**ta **re**usability **co**ntinuum. This has two axes: The first being from Fragile to Robust, and the second from Easy to Time Consuming (or labourious).

![]("figures/fig-cartesian-plane.R")

_An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set_

This forms four quadrants:

- Top left quadrant is fragile and time consuming: Not Ideal ("The Homer Car")
- Top right quadrant is robust and time consuming: Strong and Complex ("The Spaceship")
- Bottom left quadrant is fragile and easy: Not Ideal ("Paper plane")
- Borrom right quadrant is robust and easy: Super Ideal ("Serendipitous / Felix Culpa / goldilocks")

**The Homer Car**

A complex dataset that is painstakingly documented but very difficult to read and interpret. This is characterized by having something fragile and time consuming. An example of this would be a large, handwritten book that documents the process of designing an experiment. Hand written notes require scanning and encoding into images or PDF to share, and would require transcribing. This is time consuming, and fragile, as the process can easily be lost. Another example of fragile and time consuming is writing in bespoke software encoded in a binary format that cannot be read by other softwares. An extreme example might be that the data is recorded using a complex punch card system that is systematically documented; but no one can read punch cards anymore. This type of problem can result from trying to optimise too early.

**The Spaceship**

A robust process is good because it will stand the test of time, and is easy to share. However, a time consuming process is costly. An important fact to consider when designing a system that is robust and time consuming is the overal reward for reproducibility. For example, randomized control trials for a new drug would have great benefits for reproducibility as the reward/cost is high - a new drug can have positive health benefits, and is also very expensive to repeat, and equally, the drug trial can have dire effects (severe illness or death), and so must have a high standard for reproducibility. **This interaction of importance of data and time spent** means that it is worthwhile to think about the use of time for the experiment/context - we need to consider things in regards to risk and impact. In this instance, an RCT is high risk and high impact, whereas a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system.

On the other hand, if the experiment involves using existing data and combining it in an interesting way, for example pulling twitter data from different sources at different times. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

Two was to think of the spaceship are the "light aeroplance" and the "heavy falcon".

"light aeroplace / glider"


Data with an accompanying human readable README file that describes the data and a machine readable format for reading in the data.

"Heavy Falcon"

Complete information to completely reproduce the data, intructions, motivation, manual, and so on, with a format that is transferrable.

**The paper plane**

An example of a fragile and quick process could be a lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format. The format is more fragile if it is hard to read.

**Felix Culpa**

Felix Culpa means "stroke of luck", and this is a process that takes just the right amount of time so that it isn't overly time consuming, but it is also robust. One example of this could be a README to provide the human context, a machine readable statement of variables, and the raw data.

Some examples of data documentation are now discussed, and ranked on the DARECO.

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

## Journal "Data papers"

To provide more information and context around the data used in research,  journals are now adding "data papers", specifically designed for publishing and sharing data. One example of this is **Elsevier's Data In Brief**, which aims to provide an outlet where researchers can easily share and reuse data by publishing articles about the data to improve reproducibility, enhance discoverability by taking it out of the supplementary materials, increase traffic and citations to both the research articles and the data, pave the way for collaborations. Data In Brief welcome data from all research areas.

The requirements of Data In Brief are similar to research articles, requiring a title, author list, afiliations, abstract, and references. They also require several clear bullet points explaining why the data is useful to others, a direct link to the data, a complete description of the design, materials, and methods, and a specifications table. Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The Completed specifications table details information on subject area, data type (image, table, text file, graph),the data format (raw, filtered, analysed), how the data was acquired, related articles, data accessibility (it is in a public repo etc), and features of the experimental factors and features, and related research article.

Whilst this is useful, the structure it provides is very flexible, and doesn't tell the researcher/analyst how to actually structure the data and folders. It doesn't tell them how to do it, just provides some good ideas on what they should include. This is a useful step towards improving data resuse, but it _lacks some minimal structure that allows a researcher to have a predictable way to access and interpret the data_.

For example, it does not provide the same resolution of information as a Data Dictionary. As another example, Elsevier's guidelines on "a complete description of the experimental design and materials and methods", state that:

> Offer a complete description of the experimental design and methods used to acquire the data and, where applicable, to perform the analysis. Include any relevant figures and tables needed to understand the data fully. Please also provide, where applicable, any code files used for base-level analysis or filtering of the data

- This is a good standard, but it does not provide explicit instructions.

It is also unclear what the _license_ for data in brief is, as it appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses). Finally, to provide open access, this journal has an open access fee, which further limits the impact of the paper.

## journal: "data"

http://www.mdpi.com/journal/data

> a peer-reviewed open access journal on data in science, with the aim of enhancing data transparency and reusability. The journal publishes in two sections: a section on the collection, treatment and analysis methods of data in science; a section publishing descriptions of scientific and scholarly datasets (one dataset per paper).

> One of the current hot topics in science is data: how can datasets be used in scientific and scholarly research in a more reliable, citable and accountable way? Data is of paramount importance to scientific progress, yet most research data remains private. Enhancing the transparency of the processes applied to collect, treat and analyze data will help to render scientific research results reproducible and thus more accountable. The datasets itself should also be accessible to other researchers, so that research publications, dataset descriptions, and the actual datasets can be linked. The journal Data provides a forum to publish methodical papers on processes applied to data collection, treatment and analysis, as well as for data descriptors publishing descriptions of a linked dataset.

> Data (ISSN 2306-5729) is a unique international, scientific open access journal on ʻdata in scienceʼ. It provides a forum for data scientists as well as for scientists working with data. The journal publishes two sections:

> Methods: the Methods section publishes research articles, review papers and technical notes on methods for collecting, processing (treating), managing, storing and analyzing scientific and scholarly data. Related source code, if available, can be deposited as supplementary material.

> Data Descriptors: the Data Descriptors section publishes descriptions of scientific and scholarly datasets (one dataset per paper). Described datasets need to be publicly deposited prior to publication, preferably under an open license, thus allowing others to re-use the dataset. Small datasets might also be published as supplementary material to the dataset paper in the journal Data. The link to the publicly hosted version of the dataset must be given in the paper. Data descriptors therefore provide easy citability, traceability and accountability of datasets used in scientific research. Research articles published elsewhere based on the data can link back to the data descriptors via a standard reference and DOI number. Data descriptors are published under a CC BY license, thus allowing the reuse of the descriptions in other research papers without copyright infringement.

# Documenting using code books

There are also other formats, such as data dictionaries or code books, which are recommended for use when sharing data @Ellis2017.  Codebooks provide a human friendly reference for the data, typically consisting of variable names, variable labels, variable codes, and missing data. Variable names are short, descriptive names with no spaces or special characters, such as "job_position", "faculty_level", and "years_at_company". Variable labels are more descriptive, and provide more context for other reader, for example "University Job Position", "University Faculty Position Level", and  "Number of Years Worked at University [@McGill-codebook].

Variable codes apply to categorical (factor) varaibles, and are the values for their contents. For example, 0 = no, 1 = yes, and 0 = male and 1 = female. These should be consistent across similar variables to avoid a problem where one variable codes 0 as yes and another codes 1 and yes as well. Another code to consider is how date variables are formatted, this should be consistent.

Missing data are values that were not observed, but should have been, and the reason for their missingness is unknown. The code for missingness should be documented in the codebook, and should nominally be `NA`. Importantly, the corresponding code for missing must be recorded, even if it is -99, -9, ".", or "whatever", it needs to be known. If the reason for missingness is known then it should be recorded - for example censored data, or where there is patient drop out or measurement error. These can have different values, such as "unknown" or -99, and can be cleaned up upon data cleaning.

Some examples of codebooks in R include packages `dataMeta` (@dataMeta), which attaches additional information about the dataset to a data.frame as an attribute through a `linker` object. Other packages include `memisc` and `codebook`. Codebooks are implemented in other software such as STATA, which provides a "codebook" command.

[csvy](http://csvy.org/)


The `codemeta` project "focuses on metadata and discovery systems for software citation and attribution."

The R package `rio` provides an approach to try and read in any particular format of data with some intelligent guesses, and could be used where the data format is unknown [rio](https://github.com/leeper/rio).


# DataPackageR

[DataPackageR](https://github.com/RGLab/DataPackageR)

Some history:

- [frictionless-data-data-pacakges-r](https://frictionlessdata.io/data-packages/)
- [datapack](https://github.com/ropensci/datapack)

# Open knowledge foundation data specifications

[The Fiscal Data Package specification](https://blog.okfn.org/2018/05/28/introducing-version-1-of-the-fiscal-data-package-specification/)

[Other notes from OKFN on "data pacakge"](https://blog.okfn.org/?s=data+package)

# Civic bodies

Possibly explore how governments/civic bodies are documenting data:

- [brisbane](https://www.data.brisbane.qld.gov.au/data/dataset)
- [ands - Australian National Data Service](http://www.ands.org.au/working-with-data/publishing-and-reusing-data/data-journals)

# Media

The Pudding has some interesting examples of how they curate data: [pudding data](https://github.com/the-pudding/data)

# What belongs in the minimal structure for researchers

# What goes in the README

The README is a catch-all place for most things - but it is primarily front-facing, it is meant for a human to read and understand more about the data. It should contain links to the license, notes on any additional changes to the data (if any), or

# References

@EML-about: https://knb.ecoinformatics.org/#external//emlparser/docs/index.html
@Ellis

@McGill-codebook - interesting article about code books: http://www.medicine.mcgill.ca/epidemiology/joseph/pbelisle/CodebookCookbook/CodebookCookbook.pdf

https://www.icpsr.umich.edu/icpsrweb/content/shared/ICPSR/faqs/what-is-a-codebook.html
