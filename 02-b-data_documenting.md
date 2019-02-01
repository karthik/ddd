
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
