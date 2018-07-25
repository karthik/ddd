# History of data sharing inside R packages
One of the biggest barriers to data sharing has been the disproportionate
tradeoff between	the initial investment required to prepare and share data versus perceived benefits of doing so.  Further, the lack of any real progress in data citations or usage tracking makes it even more challenging to measure use.  Comparatively, software usage, even as an imperfect measure, is much easier to track. Anonymous statistics gathered by content distributed network mirrors such as the one maintained by Rstudio Inc. provide a rough measure of usage trends.  

R has also traditionally been the domain of statisticians and most of the early R packages were designed to implement one or more statistical methods. As part of the example suite (both inline documentation and longer form vignettes), such packages have included small datasets to demonstrate interesting use cases for the included functions.  As a result, R has had some form of support for datasets inside R packages since the early days.  In more recent years several authors have used this functionality to publish data only packages primarily as a way to distribute interesting datasets for the purposes of classroom lectures and intensive workshops.  These include well known packages such as `babynames`, `nycflights13`, and `gapminder`.  There are many advantages of distributing data as part of a package. These include:

- Leveraging the software documentation system to document data similar to how functions are documented. Although this is not as comprehensive as most metadata schemas, it provides a lightweight way to add human readable documentation.
- Once accepted into R’s package manager CRAN, the package is now distributed around the world at ~ 120 mirrors and can easily be installed on any computer with a short line of code. This make the dataset immediately accessible as part of a teaching exercise, real world analysis or related endeavor.
- The dataset can be easily included as a dependency for any other piece of software that might support examples.
- The package system allows for an author to include both processed, ready to use derived data and also raw data along with some code to convert them into the final form. This acts as a poor man’s form of provenance for validating the CRUD process that forms a large time commitment of most data scientists efforts.  This allows readers and reviewers to inspect both the data and the munging process to provide additional validation.
- The datasets can also be deposited into actual data repositories such as Zenodo, Figshare or other institutionally hosted ones so as to ensure a permanent identifier (such as a Digital Object Identifier). This provides an additional layer of redundancy that would ensure the survival of the data if the R language and its packaging system were to go obsolete. 

There are however limitations to sharing data as a R package. Since the system was designed to distribute small chunks of code, packages cannot be very large. Datasets included in R packages must be under 5 mb, which means that it can only really be used for small datasets. When packing binary data,  many tabular datasets can be heavily compressed. There is a tradeoff between performance and the choice of compression algorithm. This limitation immediately excludes a large proportion of research data, especially large binary files such as rasters, …, and …
But for a large number of use cases where researchers are only sharing rectangular data, or data that form the basis for figures and tables (which is what journals require) this process would be sufficient.


###  Packaging data in R

With helper functions from the `devtools` package, adding data to a package is a one step process.  Authors can include either processed data as binary files, or include raw-data:

1. Put processed data stored as binary data in the `/data/` folder.
2. Leave the raw data in the `inst/extdata` folder along with some code that will process raw to final versions so a reader could see the process involved.

Hadley Wickham’s `devtools` package makes the process of including data inside an R package incredibly easy. Once a dataset has been loaded into a session, a user can simply run 
```
devtools::use_data(dataset_1, dataset_2, ...)
```

And in the case of raw data:

```
devtools::use_data_raw(dataset_1, dataset_2, ...)
```

## Widely used R data packages

TBD. A short discussion on some of the more useful data packages. Split this discussion into ones used for teaching (e.g. nycflights13, and gap minder) and others that are clearly used for research use cases.