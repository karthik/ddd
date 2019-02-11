
# What belongs in the minimal structure for researchers

There are 8 pieces of content to consider for data sharing:

1. README: A Human readable description of the data
2. Codebook: Human readable dictionary of data contents
3. License: How to use and share the data
4. Citation: How you want your data to be cited
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

_Figure XX. Example directory layout and structure for a data repository._

Out of these sections, the minimal viable format are:

1. README
2. Codebook
3. License
4. Citation
5. Analysis ready data

What goes into each of these sections is now described.

# README: A Human readable description of the data

The README is often the first place people will go to learn more about data. It is meant for someone to read and understand more about the data and contains the "who, what, when, where, why, & how":

- **Who** collected it
- **What** is the data
- **When** was it collected
- **Where** was it collected
- **How** is was collected

The README should be placed in the top level of the project. It should be brief, and provide links to the other aforementioned sections. Saving a README with the extension `.md` file gives the author the formatting benefits of `markdown`, making it simple to insert links, tables, and make lists. In systems like GitHub, a README file is detected and rendered in nice HTML on the repository by default.

# Codebook: Human readable dictionary of data contents

Codebooks provide human readable description of the variables in the data and contain information on:

- **variable names**
- **variable labels**
- **variable codes**, and
- special values for **missing data**.

**Variable names** are short, descriptive names with no spaces or special characters. For example, "job_position", "faculty_level", and "years_at_company". **Variable labels** are longer descriptions of variables. For example "University Job Position", "University Faculty Position Level", and  "Number of Years Worked at University" [@McGill-codebook]. **Variable codes** apply to categorical (factor) variables, and are the values for their contents. For example, 0 = no, 1 = yes, and 0 = male and 1 = female. These should be consistent across similar variables to avoid problems where `0 = yes` for one variable, and `1 =yes` in another. Date variables should have consistent formatting. For example, all date information could be in format "YYYY-MM-DD", and this should not be mixed with "YYYY-DD-MM". **Missing data** are values that should have been observed, but were not. The code for missingness should be documented in the codebook, and should nominally be `NA`. If the reason for missingness is known it should be recorded. For example, censored data, patient drop out, or measurement error can have different values, such as "unknown" or -99 [@White2013; @Broman2017].

Below is an example data dictionary table taken from the [tidy tuesday repository on incarceration trends](https://github.com/rfordatascience/tidytuesday). This includes information on the variable the class (type) of the variable, and a longer description of the variable.

__Table 1. The prisoner summary data dictionary, with columns on the variable, it's class, and a short description of the contents of the variable.__

|variable        |class     | Description |
|:---------------|:---------| :---------- |
|year            |integer (date)   | Year |
|urbanicity      |character | County-type (urban, suburban, small/mid, rural) |
|pop_category    |character | Category for population - either race, gender, or Total |
|rate_per_100000 |double    | Rate within a category for prison population per 100,000 people |

Data dictionary tables should be placed in the README and presented as a table. Every data dictionary should also be provided in its raw form in the repository, for example, saved as a CSV (see Figure XX.).

# License: How to use and share the data

Data with a license clearly establishes rules on how everyone can modify, use, and share data. Without a license, these rules are unclear, and can lead to problems with attribution and citation.

It can be overwhelmeing to try and the right license for a use case. Two licenses that are well suited for data sharing are:

1. Creative Commons Attribution 4.0 International Public License (CC BY), and
2. Creative Commons CC0 1.0 Universal (CC0)

**CC BY**

The CC BY enforces attribution and due credit by default, but gives a lot of freedom for its use. Data can be shared and adapted, even for commercial use, with the following conditions:

* You must provide appropriate credit to the source. This means listing the names of the creators.
* Link back to the CC BY license, and
* Clearly show if changes were made.
* Data cannot be sublicensed, that is - a change to the existing license
* There is also no warranty, so the person or people who obtained the data cannot be held liable.

The journal PLOS Comp Bio requires that data submitted cannot be more restrictive than CC BY [@plot-comp-bio-data]. For a brief overview of the CC BY, suitable to include in a README, see @ccby-short. For the full license, see @ccby-long.

**CC0**

The CC0 is a “public domain” license. Data with a CC0 license means the data owners waive all their rights to the work, and it now "owned" by the public. The data can be freely shared, this means it can be copied, modified, and distributed, even for commercial purposes _without asking permission_. When using data with CC0, it is good practice to cite the original paper, but it is not required. If you wish to use the CC0, see https://creativecommons.org/choose/zero/.  For a brief overview of the CC0, see @cc0-short, and for the full license, see @cc0-long.

Other licenses or notices to be aware of are **copyrighted data**, and **data embargos**. If you are working with data **already copyrighted**, (for example under CC BY or CC0), you must give follow appropriate guidelines for giving credit. Data may also be under **embargo**. This means data cannot be shared more widely until a specific release time. If sharing data under an embargo, include detailed information on the embargo requirements in: the README, and in separate correspondence with those who receive the data.

# Citation: How you want your data to be cited

A DOI is a prerequisite for citation. When citing data, it only makes sense to cite datasets taht have been deposited into a datacite compliant repo. If, for example, the data are depostired in dryad or zenodo, the best practice would be to copy the citation created by these repositories. Under the hood, datacite provides the DOI. If a DOI is unavailable, a citation will be meaningless, as it cannot be tracked by any means.

# Machine readable metadata

The data dictionary provides _human readable_ information on the data. To ensure data types are preserved - dates are dates, names are characters, and so on - there needs to be some form of _machine readable_ metadata. An excellent standard for metadata is [Table Schema](https://frictionlessdata.io/specs/table-schema/). Say for a dataset called "demographics" with three variables:

| age| height|nationality |
|---:|------:|:-----------|
|  12|  161.5|Australian  |
|  21|  181.2|American    |
|  37|  178.3|New Zealand |

_Table XX Example demographics table of age, height, and nationality._

```
{
  "name": "demographics",
  # here we list the data files in this dataset
  "resources": [
    {
      "path": "demographics.csv",
      "schema": {
        "fields": [
          {
            "name": "age",
            "type": "integer"
          },
          {
            "name": "height",
            "type": "number"
          },
          {
            "name": "nationality",
            "type": "string"
          }
        ]
      }
    }
  ]
}
```


_Figure XX Example snippet of some Table Schema data for a dataset with three variables. This provides a description of each field, and the type of field, and it's description._

This contains fields such as path, and a schema with subfields name and type, for each variable. It also provides information for, licensing and features such as line breaks, and delimiters. It is built on JSON (JavaScript Object Notation), a lightweight, human-friendly, machine readable data-interchange format. Table schema is baked into formats such as [csvy](http://csvy.org/), an extended csv format, which has additional front matter in a YAML format using Table Schema.

# Raw data: The original/first data provided

Raw data is usually the first format of the data provided before any tidying or cleaning of the data. If the raw data is a practical size to share, it should be shared in a folder called `raw-data`. The raw data should be in the form that was first received, even if it is in binary or some proprietary format.  If possible, data dictionaries of the raw data should be provided in this folder as well.

# Scripts: To clean raw data ready for analysis

Any code used to clean and tidy the raw data should be provided in the `raw-data` directory. Ideally this would involve only scripted languages, but if other practical steps were taken to clean up the data, these should be recorded in a plain text or markdown file.

# Analysis ready data: Final data used in analysis

The data used in the data analysis should be provided in a folder called `data`.
Ideally, the data should be in "Tidy Data" format [@Wickham2014], where tidy data contains variables in columns, and observations in rows. Contrasting `raw data`, `tidy data`/`analysis data` should be in an easily readable plain-text format, such as CSV, tab separated, or semicolon separated. Binary or proprietary formats are discouraged in favour of interoperability.

## Tooling for packaging data

NOTE: not sure if this quite fits

Tooling for producing these this information speeds up the process of sharing data. To help create codebooks, there are R packages such as `dataMeta`, `memisc`. and `codebook`. Codebooks are implemented in other software such as STATA, which provides a "codebook" command.

The data package specification was initially developed by the Open Knowledge Foundation. This specification was never quite fully completed, it can be implemented in R with [datapack](https://github.com/ropensci/datapack), and in python with ...

They have recently completed the latest version of a specialised
[The Fiscal Data Package specification](https://blog.okfn.org/2018/05/28/introducing-version-1-of-the-fiscal-data-package-specification/), and have written extensively on data packages.
 [frictionless-data-data-packages-r](https://frictionlessdata.io/data-packages/)

[DataPackageR](https://github.com/RGLab/DataPackageR)
* takeway: it provides tools to wrap up data in an R package, while prioviding helpers with MD5sum checks, and


# Conclusion
