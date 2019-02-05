# Morgue


We have discussed these different aspects of data sharing, we now discuss some approaches to share data. A case study on CC0 for data use [@cc0-case-study] state there are three ways CC0 is expressed:

> And like our licenses, CC0 has the benefit of being expressed in three ways – legal code, a human readable deed, and machine-readable code that allows works distributed under CC0 to be easily found.

We can apply this template for metadata and context of data:

1. Human readable (README / methods)
2. Legal code (code book)
3. Machine readable (JSON/structured data)


# possible intro part

Research discusses how to share data for collaboration and how to format individual datasets [@Ellis2017; @Broman2018; @Arregoitia2018], but these focus on more specific features: how to format the individual data, and how to share data with a collaborator. They do not discuss best practices for sharing data or publishing data for wider use.

To share data, it needs to be documented. Documenting a dataset ensures others understand why the data was collected, what it was used for, and how to use it appropriately.



# tabular scope

In this paper we focus on tabular datasets, broadly defined as data that fit into a table. We discuss how to handle small, medium, and large tabular data. We wil not specifically cover data sources such as raster, image, sound, or video. The principles covered will generalise to some extent, however.

## Over-engineered (Fragile and Hard)

Designing something completely bespoke for a given task might not suit other cases, and can be very expensive to create. For example, a dataset could be painstakingly documented using a custom approach that fits that data and context. But in turn this makes it very difficult to read, interpret, and share. Such a dataset is characterized by being **fragile** and **time consuming**. An example of this would be a large, handwritten book that documents the process of designing an experiment. Hand written notes require scanning and encoding into images or PDF to share, and would require transcribing. This is time consuming. It is also fragile as the process can easily be lost. If the book dissappeared and there are no copies, the system would fail. Another example of fragile and time consuming is writing in bespoke software encoded in a binary format that cannot be read by other softwares. Or perhaps the data being recorded using a complex punch card system with thorough documentation. No one reads punch cards anymore, and sharing them is difficult. So it fails. This type of problem can result from trying to optimise and generalise too early. However it is still important

## The Spaceship (Robust and Difficult)

This type of data is called "the spaceship" as it is robust to many situations, and time consuming to create. A spaceship is a very useful machine that helps advance humanity by providing things like satellites and GPS, so the cost and time is justified. Thinking about the effective use of a tool helps us evaluate the effectiveness of data and sharing and evaluate its worth. Something that is robust and time consuming to create, but of little use or consequence would be bad.

There is a tradeoff between the time and resources taken to document something so it can be shared and reproduced, and it's overall worth and importance. For example, Randomized Control Trials (RCTs) for a new drug benefit greatly from reproducibility, as the cost and reward are high: a new drug can have positive health benefits, and is also very expensive to repeat. Equally, the drug trial can have dire effects (severe illness or death), and so must have a high standard for documentation.

There is an important interaction between the importance of the data, the time spent to document it, and the risk and impact of the data. For example, data from RCTs are important and have high risk and high impact. So, a lot of time should be spent documenting them. Comparatively, a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

This tradeoff will change over time as the relative costs also change. For example, if it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent.

Two was to think of the spaceship are the "light aeroplane" and the "heavy falcon". Light aeroplane data come with accompanying human readable README file that describes the data and a machine readable format for reading in the data. Heavy Falcon data have complete information to completely reproduce the data, intructions, motivation, manual, and so on, with a format that is transferrable.

## The paper plane (Easy and Fragile)

An example of a fragile and quick process could be a lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format. The format is more fragile if it is hard to read.

## Felix Culpa (goldilocs - easy and robust)

Felix Culpa means "stroke of luck", and this is a process that takes just the right amount of time so that it isn't overly time consuming, but it is also robust. One example of this could be a README to provide the human context, a machine readable statement of variables, and the raw data.


## References:

@plos-comp-bio-data: http://journals.plos.org/ploscompbiol/s/licenses-and-copyright

@ccby-short: https://creativecommons.org/licenses/by/4.0/
@ccby-long: https://creativecommons.org/licenses/by/4.0/legalcode
@cc0-short: https://creativecommons.org/publicdomain/zero/1.0/
@cc0-long: https://creativecommons.org/publicdomain/zero/1.0/legalcode

@tldr-legal: https://tldrlegal.com/
@creative-commons: https://creativecommons.org/
@cc-data: https://wiki.creativecommons.org/wiki/Data
@wiki-cc: https://wiki.creativecommons.org/wiki/Marking_your_work_with_a_CC_license#Example:_Dataset

# Notes / discussion


From the [creative commons wiki](https://wiki.creativecommons.org/wiki/Marking_your_work_with_a_CC_license#Example:_Dataset):

> Lastly, Is there anything else the user should know about the material?

> Is your work a modification of another work? Does your work incorporate elements of several third party materials? Are you adding any warranties, or modifying the existing disclaimer in the CC license? Are you granting additional permissions beyond what the license allows? If your answer is yes to any of these, then you should note that along with the license information about your work. For example, if your work incorporates third party materials, you would note those materials and make sure to attribute each of them correctly. This is also your chance to grant additional permissions. For example, if you license something under CC BY but are okay with people not attributing you in certain cases--this is your chance to specify those cases. You can't change the terms of a CC license, but you can always grant additional permissions or warranties.

I'm still not precisely clear _where_ we put the notice in the data. It seems eaasier for video or audio or an image - a caption can be placed under an image, for example. I  discuss this in the last paragraph

**need to read over these case studies for CC0 and CC use for data**

- https://wiki.creativecommons.org/wiki/Data_and_CC_licenses
- https://wiki.creativecommons.org/wiki/CC0_use_for_data

# References

**Open knowledge foundation data specifications**

[Other notes from OKFN on "data package"](https://blog.okfn.org/?s=data+package)

# packages for adding data dictionaries

including `dataMeta` [@dataMeta], which attaches additional information about the dataset to a data.frame as an attribute through a `linker` object.

The csvy format can be read using the R packages `csvy` and [rio](https://github.com/leeper/rio). `rio` provides an approach to try and read in any particular format of data with some intelligent guesses, and could be used where the data format is unknown.

Mention codemeta? The `codemeta` project "focuses on metadata and discovery systems for software citation and attribution."

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
