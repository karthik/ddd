
# What belongs in the minimal structure for researchers

There are 8 pieces to an ideal structure for sharing your data:

1. README: A Human readable description of the data
2. Codebook: Human readable dictionary of data contents
3. License: How to use and share the data
4. Citation: (How you want your data to be cited)
5. Machine readable meta data
6. Raw data: The original/first data provided
7. Scripts: To clean raw data ready for analysis
8. Analysis ready data: Final data used in analysis

```
proj-name/
         |
         | - README.md
         | - Codebook.csv
         | - LICENSE.md
         | - metadata.json
         | - raw-data/
                     | - raw-data.csv
                     | - 01-read-tidy-raw-data.csv
         | - data/
                 | - final-data.csv
```

_Figure XX. Example project description._

Out of these sections, the minimal viable format are the first four plus the analysis-read-data:

1. README
2. Codebook
3. License
4. Citation
5. Analysis ready data

What goes into each of these sections is now described.

# README: Human readable data description

The README is often the first place people will go to learn more about data. It is meant for someone to read and understand more about the data and contains the "who, what, when, where, why, & how":

- **Who** collected it
- **What** is the data
- **When** was it collected
- **Where** was it collected
- **How** is was collected

The README should be placed in the top level of the project. It should be brief, and provide links to the other aforementioned sections. Saving a README with the extension `.md` file gives the author the formatting benefits of `markdown`, making it simple to insert links, tables, and make lists. In systems like GitHub, a README file is detected and rendered in nice HTML on the repository by default.

# Human readable data dictionary

Data dictionaries or code books are recommended for use when sharing data @Ellis2017.  Codebooks provide a human readable table of the variables (Columns) in the data. This typically consists of **variable names**, **variable labels**, **variable codes**, and if there are special values for **missing data**.

* **Variable names** are short, descriptive names with no spaces or special characters, such as "job_position", "faculty_level", and "years_at_company".

* **Variable labels** are more descriptive, and provide more context for other reader, for example "University Job Position", "University Faculty Position Level", and  "Number of Years Worked at University [@McGill-codebook].

* **Variable codes** apply to categorical (factor) varaibles, and are the values for their contents. For example, 0 = no, 1 = yes, and 0 = male and 1 = female. These should be consistent across similar variables to avoid a problem where one variable codes 0 as yes and another codes 1 and yes as well. Another code to consider is how formatting date variables, which should be consistent.

* **Missing data** are values not observed, but should have been. The code for missingness should be documented in the codebook, and should nominally be `NA`. Importantly, the corresponding code for missing must be recorded, even if it is -99, -9, ".", or "whatever", it needs to be known. If the reason for missingness is known, then it should be recorded. For example, in censored data, or where there is patient drop out, or measurement error. These can have different values, such as "unknown" or -99, and cleaned up later. [@White2013; @Broman2017]

Below is an example data dictionary table taken from the [tidy tuesday repository on incarceration trends](https://github.com/rfordatascience/tidytuesday). This includes information on the variable the class (type) of the variable, and a longer description of the variable.

__Table 1. The prisoner summary data dictionary, with columns on the variable, it's class, and a short description of the contents of the variable.__

|variable        |class     | Description |
|:---------------|:---------| :---------- |
|year            |integer (date)   | Year |
|urbanicity      |character | County-type (urban, suburban, small/mid, rural) |
|pop_category    |character | Category for population - either race, gender, or Total |
|rate_per_100000 |double    | Rate within a category for prison population per 100,000 people |

Data dictionary tables should be placed in the README, where they can be presented as a table. Every data dictionary table provided should also be provided in its raw form in the repository - perhaps even saved as a CSV.

Creating codebooks can take time. There are R packages that help create codebooks in R, including `dataMeta`, `memisc`. and `codebook`. Codebooks are implemented in other software such as STATA, which provides a "codebook" command.

Another package is [DataPackageR](https://github.com/RGLab/DataPackageR) and - [datapack](https://github.com/ropensci/datapack), which implement a data specification was initially developed by the Open Knowledge Foundation data specification. This specification was never quite fully completed, although they have recently completed the latest version of a specialised fiscal data package specification
[The Fiscal Data Package specification](https://blog.okfn.org/2018/05/28/introducing-version-1-of-the-fiscal-data-package-specification/), and have written extensively on data packages.
 [frictionless-data-data-packages-r](https://frictionlessdata.io/data-packages/)

(data pack also has a python format).

# Data licenses

Data with a license clearly establishes rules on how everyone can modify, use, and share data. Without a license, these rules are unclear, and can lead to problems with attribution and citation.

## Choosing a license

It can be overwhelmeing to try and the right license for a use case. Two licenses that  are well suited for data sharing are:

1. Creative Commons Attribution 4.0 International Public License (CC BY), and
2. Creative Commons CC0 1.0 Universal (CC0)

**CC BY**

The CC BY enforces attribution and due credit by default, but gives a lot of freedom for its use. Data can be shared and adapted, even for commercial use, with the following conditions:

* You must provide appropriate credit to the source. This means listing the names of the creators.
* Link back to the CC BY license, and
* Clearly show if changes were made.
* Data cannot be sublicensed, that is - ... .
* There is also no warranty, so the person or people who obtained the data cannot be held liable.

The journal PLOS Comp Bio requires that data submitted cannot be more restrictive than CC BY [@plot-comp-bio-data]. For a brief overview of the CC BY, suitable to include in a README, see @ccby-short. For the full license, see @ccby-long.

**CC0**

The CC0 is a “public domain” license. Data with a CC0 license means the data owners waive all their rights to the work, and it now "owned" by the public. The data can be freely shared, this means it can be copied, modified, and distributed, even for commercial purposes _without asking permission_. When using data with CC0, it is good practice to cite the original paper, but it is not needed.

If you wish to use the CC0, see https://creativecommons.org/choose/zero/.  For a brief overview of the CC0, see @cc0-short, and for the full license, see @cc0-long.

Other licenses/notices to be aware of are **copyrighted data**, and **data embargos**

**Copyrighted data**. If you are working with data that is already copyrighted, say for example under the CC BY or CC0 notice, then you must give ensure that you follow the appropriate guidelines for giving credit.

A **Data embargo** means data cannot be shared more widely until a specific release time. If sharing data under an embargo, include detailed information on the embargo needs in:

* The README, and
* In separate correspondence with those who receive the data.

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

# Data citation

How you want your data to be cited. This can be added with a plaintext file called CITATION or `CITATION.md`. This file should contain some plaintext describing how the data should be cited, and could include a `.bibtex` of the recommended citation (see figure below)

```
bibentry(bibtype = "Misc",
         title = "...",
         author = c(person("Firstname", "Lastname")),
         doi = "",
         url = "",
         year = ,
         publisher = ""
)
```

_example bibtex citation file._

# Machine readable metadata

The data dictionary provides _human readable_ information on the data - what the variables contain, why type of data, and so on. But to actually read in the data correctly, and ensure that dates are parsed as the right dates, names are characters, and so on, there needs to be some form of machine readable metadata. We will discuss the following standards, Table Schema, EML, the Ecological Metadata Language, and JSON.

## Table Schema

[Table Schema](https://frictionlessdata.io/specs/table-schema/) contains fields such as path, and a schema, which has the subfields name and type, for each variable, and also provides information for licensing and other features like line breaks and delimiters. Table schema is baked into formats such as  [csvy](http://csvy.org/), an extended csv format, which has additional front matter in a YAML format using Table Schema.

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

* Look at Ellis + Leek paper on metadata

## JSON

JSON provides a human-friendly, machine readable format for data.

### Evaluating metadata formats?

_Table XX An overview of the merits of each package. This shows the approach, some links, pros and cons, how stable and supported they are, and whether or not they have a built in community. For thoroughness, we recommend ..., else we recommend ... ._

|thing        |links |pros |cons |stability |community |example |
|:------------|:-----|:----|:----|:---------|:---------|:-------|
|EML          |      |     |     |          |          |        |
|DataPackageR |      |     |     |          |          |        |
|csvy         |      |     |     |          |          |        |


# Raw data

Raw data is usually the first format the data was given to the researcher before any tidying or cleaning of the data. If the size of the raw data is practical to share, it should be shared in a folder called `raw-data`. If possible, data dictionaries of the raw data should be provided in this folder as well. The raw data should be in the form that was first received, even if it is in binary or some proprietary format.

# Scripts to tidy raw data

If raw data is used, then any code used to clean and tidy the data should be provided in the `raw-data` directory. Ideally this would involve only scripted languages, but if other practical steps were taken to clean up the data, these should be recorded in a plain text or markdown file.

# Tidy / analysis data

The data used in the data analysis should be provided in a folder called `data`.
Ideally, the data should be in "Tidy Data" format [@Wickham2014], where tidy data contains variables in columns, and observations in rows (figure?). Contrasting `raw data`, `tidy data`/`analysis data` should be in an easily readable plain-text format, such as CSV, tab separated, or semicolon separated. Binary or proprietary formats are discouraged.

# Conclusion
