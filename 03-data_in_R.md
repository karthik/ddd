# Releasing data in R

- One should only release data inside a R package if the primary audience is R users. Examples of such cases include those with an interest in the subject matter area, or the data itself for purposes such as teaching or training (Wickham 2016)

## History of data in R

R packages have always had the option for a "data/" folder, which could be accessed using `data()`. This data has served as a way to make examples work, and nothing more. It is unclear when the first "data only" packages were created. Having data along with the software has a precedent, for sample, STATA has accompanying data with it.

### Advantages of including data inside R packages
- Easy to share via CRAN's distributed network
- documentation comes included

Disadvantages:
- This becomes R specific and excludes users from other languages and interfaces
- Citation and attribution become problematic.

### Technical advice for R users
- If the aim of your data sharing is also to encourage users to understand the process of munging (i.e. transforming messy, raw data into clean analyzable data), include the raw data files in `inst/extdata` and provide scripts (or functions) that will transform such data into usable form. The vignette (R's long-form package documentation) would be ideal for walking users through the thought process behind one's data transformation efforts.
- If the primary purpose is to provide example datasets for purposes such as illustrating statistical methods, computational methods, or for similar uses, you may place binary data in the `data/` folder of the package structure. The binary format is important because CRAN imposes strict limits on package sizes. The general rule of thumb is that a package cannot exceed 5mb (code, documentation, and data included) (https://cran.r-project.org/web/packages/policies.html). For cases when this size is hard to maintain, CRAN recommends data-only packages that will be rarely updated. We do not recommend this practice for various reasons. For a detailed discussion on this issue, see Anderson and Eddelbuettel (2017)
- Another R specific solution is to host data using the `drat` package and accessing it via packages of small size. The location of the data is user-controlled and can be published for free on GitHub which has a size limit of 1gb (compared to CRANs 5 mb limit).
		- This solution is not general purpose since `drat` cannot be listed as an `Imports` or `Depends`.


**References:**

- Data chapter from Hadley's R Packages book (which I reviewed) http://r-pkgs.had.co.nz/data.html
- https://journal.r-project.org/archive/2017/RJ-2017-026/RJ-2017-026.pdf
