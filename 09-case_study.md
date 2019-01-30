# Case Study

We have discussed different data documenting methods in section [@data-documenting]. We now briefly assess three case study applications, and assess data documenting strengths, and areas of improvement. These are assessed using the DARECO (DAta REusability COntinuum) described in section 2.

The three case study areas are:

1. A journal article from the journal "Data in Brief".
2. A dataset from five thirty eight, "What 12 Months Of Record-Setting Temperatures Looks Like Across The U.S.".
3. A dataset from the government of Brisbane, Australia: "Library Checkout Dataset".

# Data In Brief Article

The article that was selected for the "Data in Brief" article, was "" [@Obi2018]. This article was chosen as it was one of the most downloaded articles advertised on their website.

## Five Thirty-Eight

We assess data from [five-thirty-eight](https://data.fivethirtyeight.com/), for the article ["What 12 Months Of Record-Setting Temperatures Looks Like Across The U.S."](https://fivethirtyeight.com/features/what-12-months-of-record-setting-temperatures-looks-like-across-the-u-s/). The data source comes from [here](https://github.com/fivethirtyeight/data/tree/master/us-weather-history)

## Need to add some other examples of some examples that are low on this spectrum

Note that there is a difference between easy to create vs easy to consume.

The data reuse continuum should apply to the user, but it all kind of depends on the tooling available.

The tidyverse has made package development a lot easier. In the past, there was a lot of work with using tools like `package.skeleton`, the pseudo-latex for documentation of each R function, and so on. This made it hard to create high quality R packages. There was a lot of manual work to make sure that things were documented properly. That has now been made easier thanks to `devtools`, and `roxygen2`. More people can now quite easily write a high quality package.

We are still in the past a bit with the current state of data sharing tools. There is the same opportunity here with data tooling as there was with package development tools like `devtools`. Some features that such a tools to add:

* Add Metadata
* Add a README
* Share on a cloud service
* Run checks on the data source
* Perform general data formatting checks

Features that are worthwhile/useful as a data consumer:

* Metadata (+/-)
* README (+/-)
* Ease of retrieving the data (+/-)
* General data formatting (+/-)


## Brisbane Government

We evaluate an example dataset from Brisbane, Queensland, Australia. Brisbane provides a [data portal](https://www.data.brisbane.qld.gov.au/data/dataset). The data accessed was the [Library checkout dataset](https://www.data.brisbane.qld.gov.au/data/dataset/library-checkouts-branch-date#).

We evaluate it on the two axes, Brittleness, and Time Investment.

* Issue: These axes kind of work for the developer / in historical context. However, these are actually not super clear in the eyes of a *user*.

Let's start with the website. The website provides some key overview information, describing what is in the data:

> Brisbane City Council Library checkouts borrowed at all branches on a single day. Information includes: Title, Author, Call Number, Item Identifier, Item Type, Status, Language, Checkout Branch, Date Borrowed. Also includes acronym lists. Data will be provided as a three day snapshot of every month.

It then provides a metadata acronym list of the data, and three days (7th - 9th) of every month in from June 2015 until November 2018, where each file is one month. At the bottom of the page it provides information on the date published, the license used, attribution, and update frequency.

Overall, this is quite good. It provides some key characteristics, namely:

- A README, a basic description of the data
- The data in its rawest form
- Some metadata file describing the contents of the data
- some metadata describing what license the data is provided with, when it was first published, how to attribute, and how often it is updated.

Retrieving the data from the website was not terribly difficult, but did involve a bit of work to determine how to download all files at once, instead of manually downloading the data. Some work was done to extract a good file name from the URL of the extracted data, and then binding all the data together into one longer format. The data itself was quite clean, with each column forming a variable, it was quite close to tidy data. The metadata file was actually three separate pieces of metadata, with three types of metadata: branch information, data heading information, and item code. Overall, this data falls into the "super ideal", bottom right quadrant.