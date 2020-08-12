# Morgue

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

# publishing + repositories

One example of this is **Elsevier's Data In Brief**, which aims to provide an outlet where researchers can easily share and reuse data by publishing articles about the data to improve reproducibility, enhance discoverability by taking it out of the supplementary materials, increase traffic and citations to both the research articles and the data, pave the way for collaborations. Data In Brief welcome data from all research areas.

Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The completed specifications table details information on subject area, data type (image, table, text file, graph),the data format (raw, filtered, analysed), how the data was acquired, related articles, data accessibility (it is in a public repo etc), and features of the experimental factors and features, and related research article.

As another example, Elsevier's guidelines on "a complete description of the experimental design and materials and methods", state that:

> Offer a complete description of the experimental design and methods used to acquire the data and, where applicable, to perform the analysis. Include any relevant figures and tables needed to understand the data fully. Please also provide, where applicable, any code files used for base-level analysis or filtering of the data

- This is a good standard, but it does not provide explicit instructions.

It is also unclear what the _license_ for data in brief is, as it appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses). Finally, to provide open access, this journal has an open access fee, which further limits the impact of the paper.


### Journal, "Data".

Another journal of data publishing is ["Data"](http://www.mdpi.com/journal/data). This journal has two sections (taken verbatim from their site):

1. > Methods: the Methods section publishes research articles, review papers and technical notes on methods for collecting, processing (treating), managing, storing and analyzing scientific and scholarly data. Related source code, if available, can be deposited as supplementary material.

2. > Data Descriptors: the Data Descriptors section publishes descriptions of scientific and scholarly datasets (one dataset per paper). Described datasets need to be publicly deposited prior to publication, preferably under an open license, thus allowing others to re-use the dataset. Small datasets might also be published as supplementary material to the dataset paper in the journal Data. The link to the publicly hosted version of the dataset must be given in the paper. Data descriptors therefore provide easy citability, traceability and accountability of datasets used in scientific research. Research articles published elsewhere based on the data can link back to the data descriptors via a standard reference and DOI number. Data descriptors are published under a CC BY license, thus allowing the reuse of the descriptions in other research papers without copyright infringement.



### Media published datasets

Other media outlets are starting to share their data. For example, The Pudding, provides their data [pudding data](https://github.com/the-pudding/data).

### Civic bodies

Governments/civic bodies are documenting data, for example, each state and capital city in Australia has a website with links to their open datasets.

Other civic bodies are using data at a national level in an interesting capacity:

- [ands - Australian National Data Service](http://www.ands.org.au/working-with-data/publishing-and-reusing-data/data-journals)
- [code for America](https://www.codeforamerica.org/)
- [code for Australia](https://codeforaustralia.org/)

### Nature "Scientific Data"

For example, it does not provide the same resolution of information as a Data Dictionary. License use for data is unclear in data in brief, as it appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses).


Principles for [Nature Scientific Data](https://www.nature.com/sdata/about/principles).

> Scientific Data is an open-access, online-only journal for descriptions of scientifically valuable datasets, and research that advances the sharing and reuse of scientific data. Our primary content-type, the Data Descriptor, combines traditional narrative content with curated, structured descriptions (metadata) of data to provide a new framework for data-sharing and -reuse that we believe will ultimately accelerate the pace of scientific discovery. These principles are designed to align with and support the FAIR Principles for scientific data management and stewardship, which declare that research data should be Findable, Accessible, Interoperable and Reusable.

The six principles of _Scientific Data_

1. Credit: recognize data as a citable contribution
2. Reuse: Standardized descriptions make it simpler to find and reuse data
3. Quality:
4. Discovery:
5. Open
6. Service

### Other mediums of publishing {introduction}

Other outlets of publishing include datasets published by media, such as The Pudding [@PuddingData], and FiveThirtyEight [@538]. Industry groups such as Kaggle are also publishing data sources. Government and civic bodies are also releasing large quantities of data. For example, each state and capital city in Australia has a website with links to their open datasets. One such dataset from the Brisbane Data Portal [@bris-data-portal] is the library checkout data [@bris-lib]. This contains a three day monthly snapshot of checkouts from Brisbane libraries including information such as the branch, item identifier, language, title, and author.

Meta/NOTE:

The publishing and repositories section answers the following questions:

* How is data currently being published?
* What is good and bad about current data publishing?

> - I'm not convinced that we need to talk about what is good and bad on current data publishing, I think that it makes more sense to explain the concept of a data journal, and discuss other places people are publishing data. Then discuss how to do that. Perhaps in the future we can write another paper about what is currently good and bad about data publishing processes.

> - Nature scientific data also looks like it might have some useful metric we could use to assess data prep, perhaps?
