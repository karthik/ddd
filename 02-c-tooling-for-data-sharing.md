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
