# How to document your dataset

Documenting a dataset ensures others understand why the data was collected, how it was used, and how to use it appropriately. A `csv` file alone in a folder with no other information is unhelpful. By the same token, providing too much information can make it difficult to understand, and where to start. A useful way to frame this is think of data reusability falling on a continuum, which we the DARECO: **da**ta **re**usability **co**ntinuum. This has two axes: The first being from Fragile to Robust, and the second from Easy to Time Consuming (or labourious).

![]("figures/fig-cartesian-plane.R")

_Figure of the continuum from only data, to data + readme + machine readable code + full instruction set_

This forms four quadrants:

- Top left quadrant is fragile and time consuming: Not Ideal ("The Homer Car")
- Top right quadrant is robust and time consuming: Strong and Complex ("The Spaceship")
- Bottom left quadrant is fragile and easy: Not Ideal ("Paper plane")
- Borrom right quadrant is robust and easy: Super Ideal ("Serendipitous / Felix Culpa / goldilocks")

**The Homer Car**

A complex dataset that is painstakingly documented but very difficult to read and interpret

Optimizing too early as an example

another example - writing a tome of a book to document the process, but using a technology that is not portable or standard. E.g., you recorded your data using a complex punch card system that is systematically documented; but no one can read punch cards anymore.

**The Spaceship**

"light aeroplace / glider"

Data with an accompanying human readable README file that describes the data and a machine readable format for reading in the data.

"Heavy Falcon"

Complete information to completely reproduce the data, intructions, motivation, manual, and so on, with a format that is transferrable.

**The paper plane**

A lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format (more fragile if the format is hard to read).

**Felix Culpa**

This takes just enough time to be robust, but is still easy.

Researchers and analysts should aim to be at the "good enough" as the new minimum: A README with human context, machine readable statement of variables, and the raw data. Some examples of data documentation are now discussed, and ranked on the DARECO.

**The interaction of importance of data and time spent**

Worthwhile to think about the use of time for the experiment/context:

- e.g., an RCT experiment should be very robust because it might affect life and death, vs. collecting a small project with low risk and low impact (not life and death).

> On a “writing and research retreat”.  This means i check and answer e-mail only between 8PM and 9PM each evening.  In that one hour I do the best i can--but a lot gets unanswered.  It is only a temporary victory over the great interruptor -- but even so, it is a exhilarating victory.  As the well-trodden Lithuanian folk saying goes: “beware of masters that are soul-sucking habits disguised as responsibility”  (translation may be a bit off).  Will resume normalcy on August 9.

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML is at the top right quadrant of DARECO

There is an R interface to this: https://github.com/ropensci/EML

- [EML-pkg](https://github.com/ropensci/EML)
- [EML-spec](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)


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

**journal: "data"**

http://www.mdpi.com/journal/data

# What goes in the README

The README is a catch-all place for most things - but it is primarily front-facing, it is meant for a human to read and understand more about the data. It should contain links to the license, notes on any additional changes to the data (if any), or

# Documenting using code books

There are also other formats, such as data dictionaries or code books, which are recommended for use when sharing data @Ellis2017. These "codebooks" are provided in STATA, which provides a "codebook" command. This allows you to describe the data, using a set of commands.

Some examples of "Codebooks" for data include `codemeta` and ...

# rio (more of a tool than an approach)

[rio](https://github.com/leeper/rio)

# csvy

[csvy](http://csvy.org/)


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

# References

@EML-about: https://knb.ecoinformatics.org/#external//emlparser/docs/index.html
@Ellis
