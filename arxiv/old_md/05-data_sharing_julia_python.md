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
