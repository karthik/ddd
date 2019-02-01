
# How to document your dataset

Research discusses how to share data for collaboration and how to format individual datasets [@Ellis2017; @Broman2018; @Arregoitia2018], but these focus on more specific features: how to format the individual data, and how to share data with a collaborator. They do not discuss best practices for sharing data or publishing data for wider use.

To share data, it needs to be documented. Documenting a dataset ensures others understand why the data was collected, what it was used for, and how to use it appropriately.

(Should this go in the introduction?)

In this paper we focus on tabular datasets, broadly defined as data that fit into a spreadsheed or table. We discuss how to handle small, medium, and large tabular data. We wil not specifically cover data sources such as raster, image, sound, or video. The principles covered will generalise to some extent, however.

There is a balance that must be struck to provide the right amount of documentation with data. Too much, or not enough information can be unhelpful. A folder with dozens of data files and several papers written on the topic can be overwhelming; it is hard to know where to start.  Equally, a lone `csv` file in a folder with no other information does not tell us what the data contains, or why it was collected. A good balance between the two is to provide a README file with the data that provides a human-friendly description of the data, and the variables.

But there are other features to think about as well, such as the legal description of the use of the data - licenses, and whether the data and context can be made machine readable as well.

There is no standard way to discuss the process of developing and creating the data and context, to make it easily sharable. To help frame discussion around data documenting and reusability we can think of data reuse falling on a **da**ta **re**use **co**ntinuum, the DARECO. The DARECO has two axes: Robustness, and Difficulty. Robustness goes from Fragile to Robust. Difficulty goes from easy to hard. We can then place particular datasets on this axis (see Figure 1.)

![An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set](figures/fig-robust-diff.png).

To help explain these descriptive qualities of the data sharing, we discuss three datasets and where they fall in the DARECO.

## Dataset 1: Forest Census Plot on Barro Colorado Island

The ["Foreest Ceneus Plot on Barro Colorado Island"](http://ctfs.si.edu/webatlas/datasets/bci/) provides an example of data that is time consuming to document, but also robust. It contains information on trees from a 50-hectare tree plot. Here they state:

> Censuses have been carried out in 1981-1983, 1985, 1990, 1995, 2000, 2005, 2010, and 2015. In each census, all free-standing woody stems at least 10 mm diameter at breast height were identified, tagged, and mapped. Over 350,000 individual trees have been censused over 35 years.

This is an enourmous, ongoing research effort. Brief context of the data is provided at the link, along with a link to the census plot data from 2012 at [this paper](https://repository.si.edu/handle/10088/20925). This provides an abstract and description of the data, along with co-authors, and a recommended acknowledgement. This dataset is classed as Robust and Difficult.

Robust because...

Difficult because it is a large research effort that not only involves expensive research

The impact of this kind of research is huge, as it provides information on biodiversity ...,  ..., ... .

Data that has high potential for impact should be made as robust as possible.
There is an important interaction between the importance of the data, the time spent to document it, and the risk and impact of the data. For example, data from medical randomized control trials (RCTs) can have high risk and high impact. So a lot of time should be spent documenting them. Comparatively, a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

This tradeoff will change over time as the relative costs also change. For example, if it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent.


## Dataset 2: Sensor data

Datasets obtained from sensor data, such as meteorological data are typically easy to create, and very robust.  This is because the sensors have to be very specific about what they are measuring, so a lot of the description of the type of data collected happens upstream at the instrument-design level. This flows down to when data is collected. As an example, let's explore a weather dataset from NOAA, the National Oceanic and Atmospheric Administration.

...describe NOAA dataset.

## Dataset 3: Most other datasets

Many datasets are "data dumped" into repositories with a paper. Phrases such as the following might be familiar:

> Researcher 1: "What do these columns mean?"
> Researcher 2: "Sorry, I created the data 14 years ago and I don't remember".

## The paper plane (Easy and Fragile)

An example of a fragile and quick process could be a lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format. The format is more fragile if it is hard to read.

## Felix Culpa (goldilocs - easy and robust)

Felix Culpa means "stroke of luck", and this is a process that takes just the right amount of time so that it isn't overly time consuming, but it is also robust. One example of this could be a README to provide the human context, a machine readable statement of variables, and the raw data.


# What belongs in the minimal structure for researchers

Now that we've discussed these different aspects of data sharing, we now discuss some approaches to share data. A case study on CC0 for data use [@cc0-case-study] state there are three ways CC0 is expressed:

> And like our licenses, CC0 has the benefit of being expressed in three ways – legal code, a human readable deed, and machine-readable code that allows works distributed under CC0 to be easily found.

We can apply this template for metadata and context of data:

1. Human readable (README / methods)
2. Legal code (code book)
3. Machine readable (JSON/structured data)

These are now discussed.

# Human readable: A README

The README is a catch-all place for most things - but it is primarily front-facing, it is meant for a human to read and understand more about the data. It should contain links to the license, notes on any additional changes to the data (if any), or

# Legal code: Documenting using code books

There are also other formats, such as data dictionaries or code books, which are recommended for use when sharing data @Ellis2017.  Codebooks provide a human friendly reference for the data, typically consisting of variable names, variable labels, variable codes, and missing data. Variable names are short, descriptive names with no spaces or special characters, such as "job_position", "faculty_level", and "years_at_company". Variable labels are more descriptive, and provide more context for other reader, for example "University Job Position", "University Faculty Position Level", and  "Number of Years Worked at University [@McGill-codebook].

Variable codes apply to categorical (factor) varaibles, and are the values for their contents. For example, 0 = no, 1 = yes, and 0 = male and 1 = female. These should be consistent across similar variables to avoid a problem where one variable codes 0 as yes and another codes 1 and yes as well. Another code to consider is how date variables are formatted, this should be consistent.

Missing data are values that were not observed, but should have been, and the reason for their missingness is unknown. The code for missingness should be documented in the codebook, and should nominally be `NA`. Importantly, the corresponding code for missing must be recorded, even if it is -99, -9, ".", or "whatever", it needs to be known. If the reason for missingness is known then it should be recorded - for example censored data, or where there is patient drop out or measurement error. These can have different values, such as "unknown" or -99, and can be cleaned up upon data cleaning. [@White2013; @Broman2017]

# Adding Machine readable metadata (JSON / structured data)

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

* Look at Ellis + Leek paper on metadata

## JSON

JSON provides a human-friendly, machine readable format for data.

# Tooling for sharing

## Tooling for README

A blank README file can be added usin the `usethis` [@usethis] package, with a function like `use_readme_md()`.

* perhaps discuss some kind of template
  * What would go in this template?

## Tooling for codebooks

Some examples of codebooks in R include packages `dataMeta` (@dataMeta), which attaches additional information about the dataset to a data.frame as an attribute through a `linker` object. Other packages include `memisc` and `codebook`. Codebooks are implemented in other software such as STATA, which provides a "codebook" command.

Another package is [DataPackageR](https://github.com/RGLab/DataPackageR) and - [datapack](https://github.com/ropensci/datapack), which implement a data specification was initially developed by the Open Knowledge Foundation data specification. This specification was never quite fully completed, although they have recently completed the latest version of a specialised fiscal data package specification
[The Fiscal Data Package specification](https://blog.okfn.org/2018/05/28/introducing-version-1-of-the-fiscal-data-package-specification/), and have written extensively on data packages.
 [frictionless-data-data-packages-r](https://frictionlessdata.io/data-packages/)

[csvy](http://csvy.org/) is an extended format for csv, comma separated value format, which has some additional front matter in a YAML format using a [Table Schema](https://frictionlessdata.io/specs/table-schema/). In contains field such as path, and a schema, which has the subfields name and type, for each variable, and also provides information for licensing and other features like line breaks and delimiters. The csvy format can be read using the R packages `csvy` and [rio](https://github.com/leeper/rio). `rio` provides an approach to try and read in any particular format of data with some intelligent guesses, and could be used where the data format is unknown.

The `codemeta` project "focuses on metadata and discovery systems for software citation and attribution."

## Tooling for machine readability

_Table XX An overview of the merits of each package. This shows the approach, some links, pros and cons, how stable and supported they are, and whether or not they have a built in community. For thoroughness, we recommend ..., else we recommend ... ._

|thing        |links |pros |cons |stability |community |example |
|:------------|:-----|:----|:----|:---------|:---------|:-------|
|EML          |      |     |     |          |          |        |
|DataPackageR |      |     |     |          |          |        |
|csvy         |      |     |     |          |          |        |



# References

**Open knowledge foundation data specifications**

[Other notes from OKFN on "data package"](https://blog.okfn.org/?s=data+package)
