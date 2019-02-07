# Publishing and repositories

There are a three common options for publishing data in research:

1. **Least Moving Parts**
2. **Domain Specific Venue**
3. **Long Term Archive**

We discuss each of these options and provide recommendations on how to publish data in these areas.

In **Least Moving Parts**, the data might be published with an R package, or as part of a GitHub release using piggyback @piggyback, or a in serverless databaseses. This approach **gets the data somewhere rather than nowhere**. It's minimal features means it is simple to maintain. A downsides is that it does not scale to larger data. Self hosting hosting the data is an option that we discourage, as it may succumb to bit rot.

In **Domain Specific Venue**, data can be published in journal data papers, or venues specific to the type of data. For example, in astronomy the data is hosted at the SDSS. This is appropriate for the domain.

A **Long Term Archive** is the best option to share the data. Long term archives provide information such as DOI (Digital Object Identifier) that make it easier to cite.

If the dataset you are shipping has a research application, the most relevant home for it would be Zenodo, a research data repository. Launched in 2013 in a joint collaboration between openAIRE and CERN, Zenodo provides a free, archival location for any researcher to depositor their datasets. The only limits to file sizes are 50gb for individual files, which is generous enough to accommodate a large number of use cases. Zenodo is able to accommodate larger file sizes upon request. Another alternative for Zenodo is figshare. Unlike Zenodo, figshare is a commmercially run data platform that provides a free tier for users. Another option is the that some universities provide institutional repositories. Figshare offers to integrate with university repositories, so that universities can have their data on site, but available through figshare. The tradeoff with long term archives are that they can be slow to set up, but they can last the life of the university; typically very long.

**Principles for all three**

The data should contain information on metadata, data dictionaries, the README, and data used in analysis (ref section 2).

No matter where data is submitted, there should ideally be a canonical data repo in one long term archive.

## Publishing data through a data journal

Data used in publications are often shared in the supplementary materials of articles, served on repositories such as the Dryad Digital Repository [@dryad]. Dryad makes data from scientific publiations discoverable, reusable, and citable. It is well funded through grants from the NSF, European Commission. (clocks?)

To provide more information and context around the data used in research,  journals are now adding "data papers". These are specifically designed for publishing articles about the data, and sharing it. This benefits both researchers and readers. Researchers receive credit for data they have collected or produced. Readers get more context about the data.

Data papers are similar to research articles, they have titles, authors, affiliations, abstract, and references.  They generally require an explanation of why the data is useful to others, a direct link to the data, description of the design, materials, and methods. Other information on the subject area, data type, format, and related articles are usually required.

Whilst useful, these requirements do not tell the author how to actually structure the data and folders. Instead providing ideas on what they should include. This is a useful step towards improving data resuse, but it _lacks some minimal structure that allows a researcher to have a predictable way to access and interpret the data_.

Other journals operating in this space include journals like "data in brief", "Data", and "Nature Scientific Data". Guidelines for what is required in the content of the paper vary by journal.

# Other places to put data

Some other places to put data include the open science framework: https://osf.io/, dataverse, https://dataverse.org/, and data.world, https://data.world/.


# References

@dryad: https://datadryad.org/
@zenodo
@figshare
@PuddingData: https://github.com/the-pudding/data
@538: https://data.fivethirtyeight.com/
@bris-data-portal: https://www.data.brisbane.qld.gov.au/data/dataset
@bris-lib: https://www.data.brisbane.qld.gov.au/data/dataset/library-checkouts-branch-date#
@piggyback: https://github.com/ropensci/piggyback
