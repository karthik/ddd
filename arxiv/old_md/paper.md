
# Introduction

- Importance of data sharing in research and data science
- Various use cases for the data (teaching, training models, research applications)

# How to document your dataset

Research discusses how to share data for collaboration and how to format individual datasets [@Ellis2017; @broman2018], but these focus on more specific features: how to format the individual data, and how to share data with a collaborator. They do not discuss best practices for sharing data or publishing data for wider use.

Sharing data means others can verify your results, learn from your analysis, and perhaps extend findings to other areas, advancing the field. In order to share data, it needs to be documented. Documenting a dataset ensures others understand why the data was collected, what it was used for, and how to use it appropriately.

There is a balance for providing the right amount of information and context with data. Very little, or too much information can be unhelpful. A lone `csv` file in a folder with no other information does not tell us what the data contains, why it was collected. Equally, a folder with dozens of data files and several papers written on the topic makes it is hard to know where to start, and is time consuming. In both of these cases, providing a short README file that described the variables in the dataset would improve the accessibility of the data.

There are different ways to share data and its context, but there is not a standard way to discuss this problem. To help us frame our thinking around data documenting and reusability we can think of data reusability falling on a continuum, which we call the DARECO: **da**ta **re**usability **co**ntinuum, which has two axes. The first axis goes from Fragile to Robust, the second axis from Easy to Time Consuming (or labourious).

![]("figures/fig-cartesian-plane.png")

_An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set_

This forms four quadrants:

- Top left quadrant is fragile and time consuming: Not Ideal ("The Homer Car")
- Top right quadrant is robust and time consuming: Strong and Complex ("The Spaceship")
- Bottom left quadrant is fragile and easy: Not Ideal ("Paper plane")
- Borrom right quadrant is robust and easy: Super Ideal ("Serendipitous / Felix Culpa / goldilocks")

These are now discussed in turn.

## The Homer Car

Sometimes complexity and precision are more hindering than helpful.
In the television show, "The Simpsons", Homer Simpson gets a huge budget to build a car for the everyday American. Homer designs the car for his needs, with features he wants: having three horns, a sound-proofed backseat for the children, extremely large cup holders, taillight fins, and a bubble dome. Unfortunately, the car is terrible, as what works for Homer does not work for anyone else. This was very expensive, and results in Homer's brother losing his business. In designing something completely bespoke for a given task, might not suit other cases, and can be very expensive to create.

In a similar way, a dataset could be painstakingly documented using a custom approach that fits that data and context. But in turn this makes it very difficult to read, interpret, and share. Such a dataset is characterized by being **fragile** and **time consuming**. An example of this would be a large, handwritten book that documents the process of designing an experiment. Hand written notes require scanning and encoding into images or PDF to share, and would require transcribing. This is time consuming. It is also fragile as the process can easily be lost, and so the system would fail. Another example of fragile and time consuming is writing in bespoke software encoded in a binary format that cannot be read by other softwares. An extreme example might be that the data is recorded using a complex punch card system that is systematically documented; but no one can read punch cards anymore. This type of problem can result from trying to optimise too early without thinking about the generality.

## The Spaceship

Robust data is good because it will stand the test of time, and is easy to share. However, a time consuming process is costly, but necessary for some project. We call this quadrant a spaceship as it is robust - it has to endure extreme temperatures and forces, and it is very expensive. A spaceship is a very useful machine that helps advance humanity and provide things like satellites and GPS, so the cost and time is justified. This provides a way for us to evaluate the effectiveness of data and sharing and evaluate its worth.

There is a tradeoff between the time and resources taken to document something so it can be shared and reproduced, and it's overall worth and importance. For example, Randomized Control Trials (RCTs) for a new drug benefit greatly from reproducibility, as the cost and reward are high: a new drug can have positive health benefits, and is also very expensive to repeat. Equally, the drug trial can have dire effects (severe illness or death), and so must have a high standard for documentation.

There is an important interaction between the importance of the data, the time spent to document it, and the risk and impact of the data. For example, data from RCTs are important and have high risk and high impact. So, a lot of time should be spent documenting them. Comparatively, a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

This tradeoff will change over time as the relative costs also change. For example, if it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent.

Two was to think of the spaceship are the "light aeroplane" and the "heavy falcon". Light aeroplane data come with accompanying human readable README file that describes the data and a machine readable format for reading in the data. Heavy Falcon data have complete information to completely reproduce the data, intructions, motivation, manual, and so on, with a format that is transferrable.

## The paper plane

An example of a fragile and quick process could be a lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format. The format is more fragile if it is hard to read.

## Felix Culpa

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

# Machine readable: JSON / structured data

# Tooling for sharing

## Tooling for README

* perhaps discuss some kind of template

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

@EML-about: https://knb.ecoinformatics.org/#external//emlparser/docs/index.html
@Ellis: Ellis + Leek article on sharing data for collaboration
@Broman: Broman and Woo article on sharing data for collaboration
@cc0-case-study: https://wiki.creativecommons.org/wiki/CC0_use_for_data
@McGill-codebook - interesting article about code books: http://www.medicine.mcgill.ca/epidemiology/joseph/pbelisle/CodebookCookbook/CodebookCookbook.pdf

https://www.icpsr.umich.edu/icpsrweb/content/shared/ICPSR/faqs/what-is-a-codebook.html

**Open knowledge foundation data specifications**

[Other notes from OKFN on "data package"](https://blog.okfn.org/?s=data+package)
# Releasing data in R

- One should only release data inside a R package if the primary audience is R users. Examples of such cases include those with an interest in the subject matter area, or the data itself for purposes such as teaching or training (Wickham 2016)

## History of data in R

R packages have always had the option for a "data/" folder, which could be accessed using `data()`. This data has served as a way to make examples work, and nothing more. It is unclear when the first "data only" packages were created. Having data along with the software has a precedent, for sample, STATA has accompanying data with it.

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
- https://journal.r-project.org/archive/2017/RJ-2017-026/RJ-2017-026.pdf
# Licensing

Data with a license clearly establishes rules on how everyone can modify, use, and share data. Without a license, these rules are unclear, and can lead to problems with attribution and citation.

## Choosing a license

The world of licenses is big and complex, and it can be overwhelmeing to try and the right one for a use case. There are, however two licenses that are well suited for data sharing:

1. Creative Commons Attribution 4.0 International Public License (CC BY), and
2. Creative Commons CC0 1.0 Universal (CC0)

These are discussed briefly below.

### CC BY

Using a CC BY 4.0 for your data means that it can be shared and adapted, even for commercial use, but you must provide appropriate credit to the source, link back to the CC BY license, and clearly show if changes were made. Data under a CC BY 4 license cannot be sublicensed, that is - . There is also no warranty, so the person or people who obtained the data cannot be held liable. If data under a CC BY license is used, appropriate credit must be given - this means you list the names of the creators, and link back to the original source. The CC BY enforces attribution and due credit by default, but gives a lot of freedom for its use. The journal PLOS Comp Bio requires that data submitted cannot be more restrictive than CC BY [@plot-comp-bio-data]. For a brief overview of the CC BY, suitable to include in a README, see @ccby-short. For the full license, see @ccby-long.

### CC0

The CC0 is a “public domain” license. Data with a CC0 license means the data owners waive all their rights to the work, and it now "owned" by the public. The data can be copied, modified, and distributed, even for commercial purposes _without asking permission_. This license does not enforce the attribution and due credit, but does mean that the data can be freely shared. When using data with CC0, it is good practice to cite the original paper, but it is not needed. If you wish to use the CC0, see https://creativecommons.org/choose/zero/.  For a brief overview of the CC0, see @cc0-short, and for the full license, see @cc0-long.

## Other notices to be aware of

### Copyrighted data

If you are working with data that is already copyrighted, say for example under the CC BY or CC0 notice, then you must give ensure that you follow the appropriate guidelines for giving credit.

### Data embargo

Data under an embargo means that the data cannot be shared more widely until a specific release time. If you are sharing data under an embargo, then detailed information on the embargo needs to be included in the README, and in separate correspondence with those who receive the data.

## Adding a license to your data

Once you've chosen a license, you need to make sure that you provide a good breadcrumb trail back to your work. We recommend a modified guideline from the creative commons to follow the acroynm **ALMO**: **A**uthor, **L**icense, **M**achine-readability, **O**ther good stuff? @wiki-cc.

**A** is for *Author* - who gets attribution? The author is the person or people who own the copyright to the material, who are licensing it to the public for use. This should include the people who own the material, which can be one person, multiple people, or on behalf of an entity like an organisation. This should be noted.

**L** is for *License* - How to use the material? This is straightforward, it should be stated that the material is under a license, and which one it is. It is important to be specific here - it should be stated like this: "Creative Commons Attribution 4.0 License" and then provide a link to http://creativecommons.org/licenses/by/4.0/. It is important that something like just "Creative Commons" is used. This does not tell anyone anything about how the material can be used - there are many CC licenses. A visible branding of the CC license icon is also useful, when it is front-facing - these can be found at https://licensebuttons.net/. This sort of icon can be included in a README file. To add a license to the data, a license file must be included in the same folder as the data.

**M** is for _Machine-readability_ - can a machines read it? To assist detection of the licenses, creative commons provides a license choose tool (https://creativecommons.org/choose/) that gives a machine-readable html code that can be put onto a webpage. Alternatively, uploading your data to a platform such as zenodo [@zenodo] or figshare [@figshare] will also work, as it has support for CC licensing, and makes it machine readable.

**O** is for _other stuff_ - is there anything else that people should know about? This is a good place for things such as if the data is under an _embargo_ or if it has special _copyright issues_. It is also a place to mention if the work is derivative of other work, and give appropriate citations and credit. The CC licenses cannot have their terms changed, but you can grant additional permissions or warranties. For example, if you license something under CCBY but there are particular cases where you don't mind no attribution, this is the place to specify this.

## So how do you actually include the license with the data?

Putting it together, and following **ALMO**, in your licensed work, you need to include a license. This means that your data goes into a folder, and in that same folder, there is a README.md file, a LICENSE or LICENSE.md file, and optionally some other metadata folder that provides machine readable contents.
Before adding the license to the data, check if: (1) You have the right to the data, and (2) Did you find or collect the data? These should help you decide which license is the most appropriate. You can also use the license chooser: https://creativecommons.org/choose/, and include the badge in the README, in addition to the license.

```
data--|
      |
      |- data.csv
      |- LICENSE.md
      |- README.md
      |- (optional)metadata-for-data.json
```

_Figure. An example small directory with minimal requirements._

Going through the criteria:

- **A**uthors are listed in the README.md, LICENSE.md, and metadata
- **L**icense is provided
- **M**achine-readable - this is provided through the LICENSE.md file and also in the meta-data-for-data file
- **Other Stuff** is also provided in the README.md file

## References:

@plos-comp-bio-data: http://journals.plos.org/ploscompbiol/s/licenses-and-copyright

@ccby-short: https://creativecommons.org/licenses/by/4.0/
@ccby-long: https://creativecommons.org/licenses/by/4.0/legalcode
@cc0-short: https://creativecommons.org/publicdomain/zero/1.0/
@cc0-long: https://creativecommons.org/publicdomain/zero/1.0/legalcode

@tldr-legal: https://tldrlegal.com/
@creative-commons: https://creativecommons.org/
@cc-data: https://wiki.creativecommons.org/wiki/Data
@wiki-cc: https://wiki.creativecommons.org/wiki/Marking_your_work_with_a_CC_license#Example:_Dataset

# Notes / discussion


From the [creative commons wiki](https://wiki.creativecommons.org/wiki/Marking_your_work_with_a_CC_license#Example:_Dataset):

> Lastly, Is there anything else the user should know about the material?

> Is your work a modification of another work? Does your work incorporate elements of several third party materials? Are you adding any warranties, or modifying the existing disclaimer in the CC license? Are you granting additional permissions beyond what the license allows? If your answer is yes to any of these, then you should note that along with the license information about your work. For example, if your work incorporates third party materials, you would note those materials and make sure to attribute each of them correctly. This is also your chance to grant additional permissions. For example, if you license something under CC BY but are okay with people not attributing you in certain cases--this is your chance to specify those cases. You can't change the terms of a CC license, but you can always grant additional permissions or warranties.

I'm still not precisely clear _where_ we put the notice in the data. It seems eaasier for video or audio or an image - a caption can be placed under an image, for example. I  discuss this in the last paragraph

**need to read over these case studies for CC0 and CC use for data**

- https://wiki.creativecommons.org/wiki/Data_and_CC_licenses
- https://wiki.creativecommons.org/wiki/CC0_use_for_data
# Data Sharing in Julia and Python

Sharing data in a programming language happens to some extent in other languages. We discuss how Julia and Python share and distribute data in the following section.

# Julia

Julia was established in 2012, and is a high level language with great performance. Searching METADATA.jl @METADATA-jl for packages mentioning data revealed three main categories of data packages in Julia:

1. Database access @data-access for services like MySQL, Hive, and ODBC, similar to R’s DBI organisation @R-DBI
2. Accessing data online via APIs, such as accessing the weather source NOAA @NOAA-jl
3. Data is provided directly. For example, accessing Econometric datasets @econ-data-jl, face datasets @face-data-jl, Market data @market-data-jl, and even R datasets @r-data-jl. It is telling that the datasets provided in R are useful, as there is even a Julia package, RDatasets that provides over 700 datasets from R packages. There are also packages for Accessing datasets used in vega @vega-data-jl, for accessing common machine learning datasets @ml-data-jl. There are also packages for generating fake data @fake-data-jl, for which there are at least two R packages that do this, charlatan @charlatan-data-r, and @wakefield-data-r.

# Python

Python is a popular general purpose language, used in engineering, statistics, and computer science.

> Mention Data packages (as a possible path). I worked with open knowledge foundation to bring this to R. For a brief time ropensci maintained the package. The data package standard does have limitations

# References

@METADATA-jl: https://github.com/JuliaLang/METADATA.jl
@data-access: https://github.com/JuliaDatabases
@R-DBI: https://github.com/r-dbi).
@NOAA-jl: https://github.com/pazzo83/NOAAData.jl .
@econ-data-jl: https://juliafinmetrix.github.io/EconDatasets.jl/#sec-1
@face-data-jl: https://github.com/dfdx/FaceDatasets.jl
@market-data-jl: https://marketdata.readthedocs.io/en/latest/
@r-data-jl: https://github.com/johnmyleswhite/RDatasets.jl
@vega-data-jl: https://github.com/davidanthoff/VegaDatasets.jl
@ml-data-jl: https://github.com/JuliaML/MLDatasets.jl
@fake-data-jl: https://github.com/codeneomatrix/Faker.jl
@charlatan-data-r: https://github.com/ropensci/charlatan
@wakefield-data-r: https://github.com/trinker/wakefield
# Publishing and repositories

# Ten simple rules for publishing data

1. Publish the data with a DOI
2. Include a README file with a human readable description of the data
3. Provide a codebook or glossary for each variable
4. Provide a machine readable format for your data that describes what each column contains
5.
6.
7.
8.
9.
10.

# Conclusions# Case Study

We now assess three/four (or perhaps just one!) case study areas and assess their data documenting, providing targeted feedback on how they could improve, and discuss the strengths.


# Ranking data on the DARECO

Some examples of data documentation are now discussed, and ranked on the DARECO.

## Academia

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.


## Journal "Data papers"

To provide more information and context around the data used in research,  journals are now adding "data papers", specifically designed for publishing and sharing data. One example of this is **Elsevier's Data In Brief**, which aims to provide an outlet where researchers can easily share and reuse data by publishing articles about the data to improve reproducibility, enhance discoverability by taking it out of the supplementary materials, increase traffic and citations to both the research articles and the data, pave the way for collaborations. Data In Brief welcome data from all research areas.

The requirements of Data In Brief are similar to research articles, requiring a title, author list, afiliations, abstract, and references. They also require several clear bullet points explaining why the data is useful to others, a direct link to the data, a complete description of the design, materials, and methods, and a specifications table. Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The completed specifications table details information on subject area, data type (image, table, text file, graph),the data format (raw, filtered, analysed), how the data was acquired, related articles, data accessibility (it is in a public repo etc), and features of the experimental factors and features, and related research article.

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

## Industry

???

## Media

A media article, such as The Pudding, which has some interesting examples of how they curate data: [pudding data](https://github.com/the-pudding/data)

## Civic bodies

Governments/civic bodies are documenting data:

- [brisbane](https://www.data.brisbane.qld.gov.au/data/dataset)
- [ands - Australian National Data Service](http://www.ands.org.au/working-with-data/publishing-and-reusing-data/data-journals)
- [code for America](https://www.codeforamerica.org/)
- [code for Australia](https://codeforaustralia.org/)
