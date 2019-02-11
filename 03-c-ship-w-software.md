
# Releasing data in R

One low cost and easy way to distribute data alongside compute would be to package the datasets as a data only package or as part of something larger where the methods are being implemented. The R ecosystem has many noteworthy examples of data-only packages. One exemplar.  One exemplar is the `nycflights13` package by Hadley Wickham (https://cran.r-project.org/web/packages/nycflights13/index.html). This package makes available airline data for all flights departing New York city in 2013 in a tidy format, with distinct tables for metadata on airlines, airports, weather, and planes. The package not only provides ready to use binary data but also ships raw data (in a folder called `data-raw`) along with scripts used to clean them. The package was originally created as a way to provide example data to teach tidy data principles and serves as a great model for how one can publish a data package in R.

A more common use case is to include data as part of a regular package where analytical methods are being implemented and shared. This serves the dual purpose of exposing methods and data together, making it extremely easy for a researcher to simply install and load the library at the top of their script. CRAN's distributed network (along with the global content distribution network maintained by Rstudio) ensure that the package is quickly accessible to anyone in the R ecosystem. A second critical advantage in this approach is that one could also benefit from R's package documentation syntax to generate useful metadata for fast reference. This approach can also easily be adapted to other languages. Python for example, is far more flexible with respect to including arbitrary files as part of a package.

**Other benefits of packaging data in R**

1. Packaging data can be a very powerful pedagogical tool to help researchers understand how to transform data and prepare it for further analysis. To do so, one can package raw data alongside scripts. Long form documentation such as Vignettes can provide further detailed discussion on the process. Advanced users can simply skip the raw data and scripts and proceed directly to the fast binary data which can hold a lot of data when heavily compressed.
2. When the primary motivation for shipping data is to illustrate visualization techniques or to run examples, one can skip the raw data and processing scripts and only include the binary data. As long as the total package size doesn't exceed 5 megabytes, it would be acceptable as part of CRAN. For cases when this size is hard to maintain, CRAN recommends data-only packages that will be rarely updated. For a detailed discussion on this issue and alternative approaches, see [@Brooke_Anderson2017]

One major disadvantage of packaging data inside R is that it makes the data availability very language centric. Non R users are unlikely to download and export data out of a package. This is why we recommend, as a rule, that researchers also archive data in a long-term data repository. These include domain specific repositories (see SECTION) or more general purpose ones such as Zenodo or figshare and include the persistent identifier in all locations where the data is referenced such as the manuscript, notebook and data package.


Of the 15539 packages on Central R Archive Network (CRAN), 6278 contain
datasets either as binary data (5903 packages) or as external datasets
(766). Binary files comprise a bulk of the data shipped in the `data`
folder (68.06%) with other plain text formats such as txt, csv, dat,
json comprising less than one percent of data shipped in packages.



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

Including data in a python package: https://python-packaging.readthedocs.io/en/latest/non-code-files.html
A user can typically include data (or any other arbitrary files) inside a python package by declaring it in the manifest.
