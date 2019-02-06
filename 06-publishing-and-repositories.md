Meta/NOTE:

This section answers the following questions:

* How is data currently being published?
* What is good and bad about current data publishing?

> - I'm not convinced that we need to talk about what is good and bad on current data publishing, I think that it makes more sense to explain the concept of a data journal, and discuss other places people are publishing data. Then discuss how to do that. Perhaps in the future we can write another paper about what is currently good and bad about data publishing processes.

> - Nature scientific data also looks like it might have some useful metric we could use to assess data prep, perhaps?

# Publishing and repositories

There are two main routes to publish data: publishing through a data journal, or serving the data on a repository.

## Publishing data through a data journal

Data used in publications are often shared in the supplementary materials of articles, served on repositories such as the Dryad Digital Repository [@dryad]. Dryad makes data from scientific publiations discoverable, reusable, and citable. It is well funded through grants from the NSF, European Commission. (clocks?)

To provide more information and context around the data used in research,  journals are now adding "data papers", specifically designed for publishing articles about the data, and sharing it. This benefits both researchers and readers. Researchers receive credit for data they have collected or produced. Readers get more context about the data.

Data papers are similar to research articles, they have titles, authors, affiliations, abstract, and references. Guidelines for what is required in the content of the paper vary by journal. For example, "Data in Brief" by Elsevier requires an explanation of why the data is useful to others, a direct link to the data, description of the design, materials, and methods. Other information on the subject area, data type, format, and related articles are usually required.

Whilst useful, these requirements do not tell the author how to actually structure the data and folders. Instead providing ideas on what they should include. This is a useful step towards improving data resuse, but it _lacks some minimal structure that allows a researcher to have a predictable way to access and interpret the data_.

For example, it does not provide the same resolution of information as a Data Dictionary. License use for data is unclear in data in brief, as it appears to be CC-BY, but upon acceptance of an article, authors are asked to complete an 'Exclusive License Agreement' [more information](https://www.elsevier.com/about/our-business/policies/copyright), and that third party reuse of open access articles is determined by the author's choice of [user license](https://www.elsevier.com/about/our-business/policies/open-access-licenses).

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

Other journals operating in this space include journals like "Data", and "Nature Scientific Data" (the journal we are submitting to?)

### Other mediums of publishing

Other outlets of publishing include datasets published by media, such as The Pudding [@PuddingData], and FiveThirtyEight [@538]. Industry groups such as Kaggle are also publishing data sources. Government and civic bodies are also releasing large quantities of data. For example, each state and capital city in Australia has a website with links to their open datasets. One such dataset from the Brisbane Data Portal [@bris-data-portal] is the library checkout data [@bris-lib]. This contains a three day monthly snapshot of checkouts from Brisbane libraries including information such as the branch, item identifier, language, title, and author.

## Publishing data through a repository

If the dataset you are shipping has a research application, the most relevant home for it would be Zenodo, a research data repository. Launched in 2013 in a joint collaboration between openAIRE and CERN, Zenodo provides a free, archival location for any researcher to depositor their datasets. The only limits to file sizes are 50gb for individual files, which is generous enough to accommodate a large number of use cases. Zenodo is able to accommodate larger file sizes upon request. Another alternative for Zenodo is figshare. Unlike Zenodo, figshare is a commmercially run data platform that provides a free tier for users.

# What goes into a data repository?

Perhaps provide a continuum of this for things like:

- data in a package
- github releases
- hosted data set (bad)
- zenodo
- institutional repository (varies by instution)

# References

@dryad: https://datadryad.org/
@zenodo
@figshare
@PuddingData: https://github.com/the-pudding/data
@538: https://data.fivethirtyeight.com/
@bris-data-portal: https://www.data.brisbane.qld.gov.au/data/dataset
@bris-lib: https://www.data.brisbane.qld.gov.au/data/dataset/library-checkouts-branch-date#
