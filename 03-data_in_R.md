
# Releasing data in R

One low cost and easy way to distribute data alongside compute would be to package the datasets as a data only package or as part of something larger where the methods are being implemented. The R ecosystem has many noteworthy examples of data-only packages. One exemplar.  One exemplar is the `nycflights13` package by Hadley Wickham (https://cran.r-project.org/web/packages/nycflights13/index.html). This package makes available airline data for all flights departing New York city in 2013 in a tidy format, with distinct tables for metadata on airlines, airports, weather, and planes. The package not only provides ready to use binary data but also ships raw data (in a folder called `data-raw`) along with scripts used to clean them. The package was originally created as a way to provide example data to teach tidy data principles and serves as a great model for how one can publish a data package in R.

A more common use case is to include data as part of a regular package where analytical methods are being implemented and shared. This serves the dual purpose of exposing methods and data together, making it extremely easy for a researcher to simply install and load the library at the top of their script. CRAN's distributed network (along with the global content distribution network maintained by Rstudio) ensure that the package is quickly accessible to anyone in the R ecosystem. A second critical advantage in this approach is that one could also benefit from R's package documentation syntax to generate useful metadata for fast reference. This approach can also easily be adapted to other languages. Python for example, is far more flexible with respect to including arbitrary files as part of a package. 

**Other benefits of packaging data in R**

1. Packaging data can be a very powerful pedagogical tool to help researchers understand how to transform data and prepare it for further analysis. To do so, one can package raw data alongside scripts. Long form documentation such as Vignettes can provide further detailed discussion on the process. Advanced users can simply skip the raw data and scripts and proceed directly to the fast binary data which can hold a lot of data when heavily compressed.
2. When the primary motivation for shipping data is to illustrate visualization techniques or to run examples, one can skip the raw data and processing scripts and only include the binary data. As long as the total package size doesn't exceed 5 megabytes, it would be acceptable as part of CRAN. For cases when this size is hard to maintain, CRAN recommends data-only packages that will be rarely updated. We do not recommend this practice for various reasons. For a detailed discussion on this issue, see Anderson and Eddelbuettel (2017)

One major disadvantage of this approach is that it makes the data availability very language centric. Non R users are unlikely to download and export data from a package. This is why we recommend, as a rule, that researchers also archive data in a long-term data repository such as Zenodo or figshare (see data publishing section) and include the persistent identifier in all locations such as the manuscript, notebook and data package. 

**References:**

- Data chapter from Hadley's R Packages book (which I reviewed) http://r-pkgs.had.co.nz/data.html
- https://journal.r-project.org/archive/2017/RJ-2017-026/RJ-2017-026.pdf


