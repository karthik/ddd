# Publishing and repositories

When publishing data, there are a three common options:

1. **Technical**: Publish the data inside a package, as part of a gh release, in serverless databaseses etc. Ones without too many moving parts for a researcher to maintain.

2. **Traditional venues**: Journal data papers. Either domain specific (ecology, monographs) or domain agnostic

3 **Long-term archive**. Talk about why data is best made avaialbe at zenodo or similar even if made available easily elsewhere

We believe that no matter where you submit the data, you should have a canonical data repo in one long term archive. This contains information on metadata, data dictionaries, the README, and data used in analysis (ref section 2).

There are two main routes to publish data: publishing through a data journal, or serving the data on a repository.


Perhaps provide a continuum of this for things like:

- data in a package
- github releases
- hosted data set (bad)
- zenodo
- institutional repository (varies by instution)

Long term repo is not the fastest thing to get to.

What are the options that we want to provide?


Other things to cover:
- How to link the doi

## Publishing data through a data journal

Data used in publications are often shared in the supplementary materials of articles, served on repositories such as the Dryad Digital Repository [@dryad]. Dryad makes data from scientific publiations discoverable, reusable, and citable. It is well funded through grants from the NSF, European Commission. (clocks?)

To provide more information and context around the data used in research,  journals are now adding "data papers", specifically designed for publishing articles about the data, and sharing it. This benefits both researchers and readers. Researchers receive credit for data they have collected or produced. Readers get more context about the data.

Data papers are similar to research articles, they have titles, authors, affiliations, abstract, and references.  They generally require an explanation of why the data is useful to others, a direct link to the data, description of the design, materials, and methods. Other information on the subject area, data type, format, and related articles are usually required.

Whilst useful, these requirements do not tell the author how to actually structure the data and folders. Instead providing ideas on what they should include. This is a useful step towards improving data resuse, but it _lacks some minimal structure that allows a researcher to have a predictable way to access and interpret the data_.

Other journals operating in this space include journals like "data in brief", "Data", and "Nature Scientific Data". Guidelines for what is required in the content of the paper vary by journal.

## Publishing data through a repository

If the dataset you are shipping has a research application, the most relevant home for it would be Zenodo, a research data repository. Launched in 2013 in a joint collaboration between openAIRE and CERN, Zenodo provides a free, archival location for any researcher to depositor their datasets. The only limits to file sizes are 50gb for individual files, which is generous enough to accommodate a large number of use cases. Zenodo is able to accommodate larger file sizes upon request. Another alternative for Zenodo is figshare. Unlike Zenodo, figshare is a commmercially run data platform that provides a free tier for users.

# References

@dryad: https://datadryad.org/
@zenodo
@figshare
@PuddingData: https://github.com/the-pudding/data
@538: https://data.fivethirtyeight.com/
@bris-data-portal: https://www.data.brisbane.qld.gov.au/data/dataset
@bris-lib: https://www.data.brisbane.qld.gov.au/data/dataset/library-checkouts-branch-date#
