# Publishing and repositories

There are two main routes to publish data: publishing through a data journal, or serving the data on a repository.

## Publishing data through a data journal

This section answers the following questions:

* How is data currently being published?
* What is good and bad about current data publishing?

There are a variety of ways for data to be published. Data used in publications were usually shared in the supplementary materials of articles. There has been a shift to provide separate journal articles just for the data. This benefits researchers as they can now receive credit for data they have collected or produced. It benefits readers as these "data papers" provide more space for researchers to describe and discuss their data. However the guidelines for reporting on the data vary greatly.

To provide more information and context around the data used in research,  journals are now adding "data papers", specifically designed for publishing and sharing data. One example of this is **Elsevier's Data In Brief**, which aims to provide an outlet where researchers can easily share and reuse data by publishing articles about the data to improve reproducibility, enhance discoverability by taking it out of the supplementary materials, increase traffic and citations to both the research articles and the data, pave the way for collaborations. Data In Brief welcome data from all research areas.

The requirements of Data In Brief are similar to research articles, requiring a title, author list, afiliations, abstract, and references. They also require several clear bullet points explaining why the data is useful to others, a direct link to the data, a complete description of the design, materials, and methods, and a specifications table. Of particular interest are the sections **Completed specifications table** and **complete description of the experimental design and materials and methods**

The completed specifications table details information on subject area, data type (image, table, text file, graph),the data format (raw, filtered, analysed), how the data was acquired, related articles, data accessibility (it is in a public repo etc), and features of the experimental factors and features, and related research article.

Whilst this is useful, the structure it provides is very flexible, and doesn't tell the researcher/analyst how to actually structure the data and folders. It doesn't tell them how to do it, just provides some good ideas on what they should include. This is a useful step towards improving data resuse, but it _lacks some minimal structure that allows a researcher to have a predictable way to access and interpret the data_.

For example, it does not provide the same resolution of information as a Data Dictionary. As another example, Elsevier's guidelines on "a complete description of the experimental design and materials and methods", state that:

> Offer a complete description of the experimental design and methods used to acquire the data and, where applicable, to perform the analysis. Include any relevant figures and tables needed to understand the data fully. Please also provide, where applicable, any code files used for base-level analysis or filtering of the data

- This is a good standard, but it does not provide explicit instructions.

It is also unclear what the _license_ for data in brief is, as it appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses). Finally, to provide open access, this journal has an open access fee, which further limits the impact of the paper.

### Nature "Scientific Data"

Principles for [Nature Scientific Data](https://www.nature.com/sdata/about/principles).

> Scientific Data is an open-access, online-only journal for descriptions of scientifically valuable datasets, and research that advances the sharing and reuse of scientific data. Our primary content-type, the Data Descriptor, combines traditional narrative content with curated, structured descriptions (metadata) of data to provide a new framework for data-sharing and -reuse that we believe will ultimately accelerate the pace of scientific discovery. These principles are designed to align with and support the FAIR Principles for scientific data management and stewardship, which declare that research data should be Findable, Accessible, Interoperable and Reusable.

The six principles of _Scientific Data_

1. Credit: recognize data as a citable contribution
2. Reuse: Standardized descriptions make it simpler to find and reuse data
3. Quality:
4. Discovery:
5. Open
6. Service

### Journal, "Data".

Another journal of data publishing is ["Data"](http://www.mdpi.com/journal/data). This journal has two sections (taken verbatim from their site):

1. > Methods: the Methods section publishes research articles, review papers and technical notes on methods for collecting, processing (treating), managing, storing and analyzing scientific and scholarly data. Related source code, if available, can be deposited as supplementary material.

2. > Data Descriptors: the Data Descriptors section publishes descriptions of scientific and scholarly datasets (one dataset per paper). Described datasets need to be publicly deposited prior to publication, preferably under an open license, thus allowing others to re-use the dataset. Small datasets might also be published as supplementary material to the dataset paper in the journal Data. The link to the publicly hosted version of the dataset must be given in the paper. Data descriptors therefore provide easy citability, traceability and accountability of datasets used in scientific research. Research articles published elsewhere based on the data can link back to the data descriptors via a standard reference and DOI number. Data descriptors are published under a CC BY license, thus allowing the reuse of the descriptions in other research papers without copyright infringement.

Other media outlets are starting to share their data. For example, The Pudding, provides their data [pudding data](https://github.com/the-pudding/data).

### Media published datasets

Other media outlets are starting to share their data. For example, The Pudding, provides their data [pudding data](https://github.com/the-pudding/data).

### Civic bodies

Governments/civic bodies are documenting data, for example, each state and capital city in Australia has a website with links to their open datasets.

Other civic bodies are using data at a national level in an interesting capacity:

- [ands - Australian National Data Service](http://www.ands.org.au/working-with-data/publishing-and-reusing-data/data-journals)
- [code for America](https://www.codeforamerica.org/)
- [code for Australia](https://codeforaustralia.org/)


journals store data in a service called "Dryad"

## Publishing data through a repository

If the dataset you are shipping has a research application, the most relevant home for it would be Zenodo, which is a research data repository. Launched in 2013 in a joint collaboration between openAIRE and CERN, it provides a free, archival location for any researcher to depositor their datasets. The only limits to file sizes are 50gb for individual files, which is generous enough to accommodate a large number of use cases. Zenodo is able to accommodate larger file sizes upon request.

Another alternative for Zenodo is figshare. Unlike Zenodo, figshare is a commmercially run data platform that provides a free tier for users.

Perhaps provide a continuum of this for things like:

- data in a package
- github releases
- hosted data set (bad)
- zenodo
- institutional repository (varies by instution)
