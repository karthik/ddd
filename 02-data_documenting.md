# How to document your dataset

Research discusses how to share data for collaboration and how to format individual datasets [@Ellis2017; @broman2018], but these focus on more specific features: how to format the individual data, and how to share data with a collaborator. They do not discuss best practices for sharing data or publishing data for wider use.

Sharing data means others can verify your results, learn from your analysis, and perhaps extend findings to other areas, advancing the field. In order to share data, it needs to be documented. Documenting a dataset ensures others understand why the data was collected, what it was used for, and how to use it appropriately.

There is a balance for providing the right amount of information and context with data. Very little, or too much information can be unhelpful. A lone `csv` file in a folder with no other information does not tell us what the data contains, why it was collected. Equally, a folder with dozens of data files and several papers written on the topic makes it is hard to know where to start, and is time consuming. In both of these cases, providing a short README file that described the variables in the dataset would improve the accessibility of the data.

There are different ways to share data and its context, but there is not a standard way to discuss this problem. To help us frame our thinking around data documenting and reusability we can think of data reusability falling on a continuum, which we call the DARECO: **da**ta **re**usability **co**ntinuum, which has two axes. The first axis goes from Fragile to Robust, the second axis from Easy to Time Consuming (or labourious).

![]("figures/fig-cartesian-plane.R")

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
