
# Morgue


# Data Sharing in Julia and Python {#julia-python}

Sharing data in a programming language happens to some extent in other languages, such as Julia and Python.  Julia was established in 2012, and is a high level language with great performance [@bezanson2012julia].
Similar to R, Julia provides packages for database access, API access, and data packages [@METADATA-jl]. This includes access to MySQL databases, NOAA, and actual datasets from Econometrics, faces, Market data, and even R datasets  [@NOAA-jl; @econ-data-jl; @face-data-jl; @market-data-jl; @r-data-jl].

Python is a popular general purpose language, used in engineering, statistics, and computer science. 
Including data in a python package is straightforward; a user can include data (or any other arbitrary files) inside a python package by declaring it in the manifest [@include-data-py-pkg].


## Challenges -  Understanding tradeoffs

To improve data impact it needs more time to prepare so it is easier to understand. 

Another challenge is in the gross total amount of documentation. Too much documentation can be overwhelming; too little and you don't know anything. For example, compare a folder with dozens of data files and several papers, to a single CSV file. The first is too much, and understanding it requires a high time cost. The second is too little; we don't know anything about what the data is or why it was collected. The challenge is to provide the right level of detail, somewhere between these two extremes. This changes depending on the impact of the data, and the task at hand. 


There are many features to consider when documenting, sharing, and publishing data. What format to store the data in? How do you describe the variables, observations, and collection methods? Do you include raw data? What about data used in analysis? What about metadata for the variables? And then there's licenses, and long term storage. It can be hard to know where to start, but together they all help make the data easier to understand. These features are not clearly described in the scientific literature in the context of including them alongside research.

The research created from the 50 hectare plot, discussed in section \@ref(ex-data-1) - this dataset was challenging to understand without special domain expertise.

Ultimately, creating good documentation has the same challenge as good writing: it takes time, and it can be hard to know when you are done. 

It can be hard to find the right amount of time to spend. Ideally, you want the gains in understanding not to be outweighed by the time taken to improve them.

Impact is a difficult quantity to measure. 

To help explain these descriptive qualities of the data sharing, we discuss three datasets and their relationship of **Effort to prepare**, and **Ease of understanding** in section 5.

One of the easiest solutions to making data available alongside an analysis is to include it in the same version controlled repository as the analysis scripts. This works well with the data file sizes are in the order of bytes to megabytes. When a reader clones the repository, the scripts and notebooks will be able to read all data files from relative paths with no further modifications to the code itself. Assuming the data would be useful beyond the context of the analysis, it would be beneficial to also archive it in a long-term repository.

One language agnostic solution is to use the Open Knowledge Foundations Frictionless data spec, implemented in both R and Python.


* Documenting data is a time consuming process
* You need to consider the tradeoffs: does the time spent match the potential impact, would verification become easier with access to good quality data?


## Adding a license to your data

Before adding the license to the data, check if:

(1) You have the right to the data, and
(2) Did you find or collect the data?

These should help you decide which license is the most appropriate. You can also use the license chooser: https://creativecommons.org/choose/, and include the badge in the README, in addition to the license.

Once you've chosen a license, you need to make sure that you provide a good breadcrumb trail back to your work. We recommend a modified guideline from the creative commons to follow the acroynm **ALMO**: **A**uthor, **L**icense, **M**achine-readability, **O**ther good stuff? @wiki-cc.

**A** is for *Author* - who gets attribution? The author is the person or people who own the copyright to the material, who are licensing it to the public for use. This should include the people who own the material, which can be one person, multiple people, or on behalf of an entity like an organisation. This should be noted.

**L** is for *License* - How to use the material? To add a license to the data, a license file must be included in the same folder as the data. Somewhere elese in the folder, such as the README should state which material is under which. It is important to be specific. For example, the CC BY 4.0 license should be stated as: "Creative Commons Attribution 4.0 License" and then provide a link to http://creativecommons.org/licenses/by/4.0/. Do not just list "Creative Commons", as it does not tell anyone anything about how the material can be used - there are many CC licenses. A visible branding of the CC license icon is also useful, when it is front-facing - these can be found at https://licensebuttons.net/. This sort of icon can be included in a README file.

**M** is for _Machine-readability_ - can a machines read it? To assist detection of the licenses, creative commons provides a license choose tool (https://creativecommons.org/choose/) that gives a machine-readable html code that can be put onto a webpage. Alternatively, uploading your data to a platform such as zenodo [@zenodo] or figshare [@figshare] will also work, as it has support for CC licensing, and makes it machine readable.

**O** is for _other stuff_ - is there anything else that people should know about? This is a good place for things such as if the data is under an _embargo_ or if it has special _copyright issues_. It is also a place to mention if the work is derivative of other work, and give appropriate citations and credit. The CC licenses cannot have their terms changed, but you can grant additional permissions or warranties. For example, if you license something under CCBY but there are particular cases where you don't mind no attribution, this is the place to specify this.

Putting it all together, and following **ALMO**, we recommend the following: Your data goes into a folder, and in that same folder, there is a README.md file, a LICENSE or LICENSE.md file, and optionally some other metadata folder that provides machine readable contents. See Figure XX of an example small directory.

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


## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

* Look at Ellis + Leek paper on metadata


**?Evaluating metadata formats?**

_Table XX An overview of the merits of each package. This shows the approach, some links, pros and cons, how stable and supported they are, and whether or not they have a built in community. For thoroughness, we recommend ..., else we recommend ... ._

|thing        |links |pros |cons |stability |community |example |
|:------------|:-----|:----|:----|:---------|:---------|:-------|
|EML          |      |     |     |          |          |        |
|DataPackageR |      |     |     |          |          |        |
|csvy         |      |     |     |          |          |        |

## SDSS-IV acknowledgement:

Funding for the Sloan Digital Sky Survey IV has been provided by the Alfred P. Sloan Foundation, the U.S. Department of Energy Office of Science, and the Participating Institutions. SDSS-IV acknowledges
support and resources from the Center for High-Performance Computing at
the University of Utah. The SDSS web site is www.sdss.org.

SDSS-IV is managed by the Astrophysical Research Consortium for the
Participating Institutions of the SDSS Collaboration including the
Brazilian Participation Group, the Carnegie Institution for Science,
Carnegie Mellon University, the Chilean Participation Group, the French Participation Group, Harvard-Smithsonian Center for Astrophysics,
Instituto de Astrofísica de Canarias, The Johns Hopkins University, Kavli Institute for the Physics and Mathematics of the Universe (IPMU) /
University of Tokyo, the Korean Participation Group, Lawrence Berkeley National Laboratory,
Leibniz Institut für Astrophysik Potsdam (AIP),
Max-Planck-Institut für Astronomie (MPIA Heidelberg),
Max-Planck-Institut für Astrophysik (MPA Garching),
Max-Planck-Institut für Extraterrestrische Physik (MPE),
National Astronomical Observatories of China, New Mexico State University,
New York University, University of Notre Dame,
Observatário Nacional / MCTI, The Ohio State University,
Pennsylvania State University, Shanghai Astronomical Observatory,
United Kingdom Participation Group,
Universidad Nacional Autónoma de México, University of Arizona,
University of Colorado Boulder, University of Oxford, University of Portsmouth,
University of Utah, University of Virginia, University of Washington, University of Wisconsin,
Vanderbilt University, and Yale University.


The data package specification was initially developed by the Open Knowledge Foundation. This specification was never quite fully completed, it can be implemented in R with [datapack](https://github.com/ropensci/datapack), and in python with ...

They have recently completed the latest version of a specialised
[The Fiscal Data Package specification](https://blog.okfn.org/2018/05/28/introducing-version-1-of-the-fiscal-data-package-specification/), and have written extensively on data packages.
 [frictionless-data-data-packages-r](https://frictionlessdata.io/data-packages/)




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


 # Publishing data References

@dryad: https://datadryad.org/
@zenodo
@figshare
@PuddingData: https://github.com/the-pudding/data
@538: https://data.fivethirtyeight.com/
@bris-data-portal: https://www.data.brisbane.qld.gov.au/data/dataset
@bris-lib: https://www.data.brisbane.qld.gov.au/data/dataset/library-checkouts-branch-date#
@piggyback: https://github.com/ropensci/piggyback
@White2013: Make it easier to (re)use your data
