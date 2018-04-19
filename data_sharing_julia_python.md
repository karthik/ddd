# Data Sharing in Julia and Python

Sharing data in a programming language happens to some extent in other languages. We discuss how Julia and Python share and distribute data in the following section.

# Julia

Julia was established in ...,
Searching [METADATA.jl](https://github.com/JuliaLang/METADATA.jl) to find packages mentioning data reveals that there are three main categories of data packages in Julia:

1. [Database access](https://github.com/JuliaDatabases) for services like MySQL, Hive, and ODBC, similar to [R’s DBI organisation](https://github.com/r-dbi).
2. Accessing data online via APIs, such as [accessing the weather source NOAA](https://github.com/pazzo83/NOAAData.jl .
3. Data is provided directly. For example, [accessing Econometric datasets](https://juliafinmetrix.github.io/EconDatasets.jl/#sec-1), [face datasets](https://github.com/dfdx/FaceDatasets.jl), [Market data](https://marketdata.readthedocs.io/en/latest/), and [R datasets](https://github.com/johnmyleswhite/RDatasets.jl).

It is telling that the datasets provided in R are useful, as there is even a Julia package, RDatasets that provides over 700 datasets from R packages. There are also packages for Accessing datasets used in [vega](https://github.com/davidanthoff/VegaDatasets.jl), for accessing common [machine learning datasets](https://github.com/JuliaML/MLDatasets.jl). There are also packages for [generating fake data](https://github.com/codeneomatrix/Faker.jl), for which there are at least two R packages that do this ([charlatan](https://github.com/ropensci/charlatan), and [wakefield](https://github.com/trinker/wakefield)).

# Python

Python is a popular general purpose language, used in engineering, statistics, and more.

> Mention Data packages (as a possible path). I worked with open knowledge foundation to bring this to R. For a brief time ropensci maintained the package. The data package standard does have limitations

# References

- I need to work out how many of these links I'm going to use before I cite them all down here
