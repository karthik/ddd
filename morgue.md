* Documenting data is a time consuming process
* You need to consider the tradeoffs: does the time spent match the potential impact, would verification become easier with access to good quality data?


## Adding a license to your data

Before adding the license to the data, check if:

(1) You have the right to the data, and
(2) Did you find or collect the data?

These should help you decide which license is the most appropriate. You can also use the license chooser: https://creativecommons.org/choose/, and include the badge in the README, in addition to the license.

Once you've chosen a license, you need to make sure that you provide a good breadcrumb trail back to your work. We recommend a modified guideline from the creative commons to follow the acroynm **ALMO**: **A**uthor, **L**icense, **M**achine-readability, **O**ther good stuff? @wiki-cc.

**A** is for *Author* - who gets attribution? The author is the person or people who own the copyright to the material, who are licensing it to the public for use. This should include the people who own the material, which can be one person, multiple people, or on behalf of an entity like an organisation. This should be noted.

**L** is for *License* - How to use the material? To add a license to the data, a license file must be included in the same folder as the data. Somewhere elese in the folder, such as the README should state which material is under which. It is important to be specific. For example, the CC BY 4.0 license should be stated as: "Creative Commons Attribution 4.0 License" and then provide a link to http://creativecommons.org/licenses/by/4.0/. Do not just list "Creative Commons", as it does not tell anyone anything about how the material can be used - there are many CC licenses. A visible branding of the CC license icon is also useful, when it is front-facing - these can be found at https://licensebuttons.net/. This sort of icon can be included in a README file.

**M** is for _Machine-readability_ - can a machines read it? To assist detection of the licenses, creative commons provides a license choose tool (https://creativecommons.org/choose/) that gives a machine-readable html code that can be put onto a webpage. Alternatively, uploading your data to a platform such as zenodo [@zenodo] or figshare [@figshare] will also work, as it has support for CC licensing, and makes it machine readable.

**O** is for _other stuff_ - is there anything else that people should know about? This is a good place for things such as if the data is under an _embargo_ or if it has special _copyright issues_. It is also a place to mention if the work is derivative of other work, and give appropriate citations and credit. The CC licenses cannot have their terms changed, but you can grant additional permissions or warranties. For example, if you license something under CCBY but there are particular cases where you don't mind no attribution, this is the place to specify this.

Putting it all together, and following **ALMO**, we recommend the following: Your data goes into a folder, and in that same folder, there is a README.md file, a LICENSE or LICENSE.md file, and optionally some other metadata folder that provides machine readable contents. See Figure XX of an example small directory.

```
data--|
      |
      |- data.csv
      |- LICENSE.md
      |- README.md
      |- (optional)metadata-for-data.json
```

_Figure. An example small directory with minimal requirements._

Going through the criteria:

- **A**uthors are listed in the README.md, LICENSE.md, and metadata
- **L**icense is provided
- **M**achine-readable - this is provided through the LICENSE.md file and also in the meta-data-for-data file
- **Other Stuff** is also provided in the README.md file


## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

* Look at Ellis + Leek paper on metadata


**?Evaluating metadata formats?**

_Table XX An overview of the merits of each package. This shows the approach, some links, pros and cons, how stable and supported they are, and whether or not they have a built in community. For thoroughness, we recommend ..., else we recommend ... ._

|thing        |links |pros |cons |stability |community |example |
|:------------|:-----|:----|:----|:---------|:---------|:-------|
|EML          |      |     |     |          |          |        |
|DataPackageR |      |     |     |          |          |        |
|csvy         |      |     |     |          |          |        |

## SDSS-IV acknowledgement:

Funding for the Sloan Digital Sky Survey IV has been provided by the Alfred P. Sloan Foundation, the U.S. Department of Energy Office of Science, and the Participating Institutions. SDSS-IV acknowledges
support and resources from the Center for High-Performance Computing at
the University of Utah. The SDSS web site is www.sdss.org.

SDSS-IV is managed by the Astrophysical Research Consortium for the
Participating Institutions of the SDSS Collaboration including the
Brazilian Participation Group, the Carnegie Institution for Science,
Carnegie Mellon University, the Chilean Participation Group, the French Participation Group, Harvard-Smithsonian Center for Astrophysics,
Instituto de Astrofísica de Canarias, The Johns Hopkins University, Kavli Institute for the Physics and Mathematics of the Universe (IPMU) /
University of Tokyo, the Korean Participation Group, Lawrence Berkeley National Laboratory,
Leibniz Institut für Astrophysik Potsdam (AIP),
Max-Planck-Institut für Astronomie (MPIA Heidelberg),
Max-Planck-Institut für Astrophysik (MPA Garching),
Max-Planck-Institut für Extraterrestrische Physik (MPE),
National Astronomical Observatories of China, New Mexico State University,
New York University, University of Notre Dame,
Observatário Nacional / MCTI, The Ohio State University,
Pennsylvania State University, Shanghai Astronomical Observatory,
United Kingdom Participation Group,
Universidad Nacional Autónoma de México, University of Arizona,
University of Colorado Boulder, University of Oxford, University of Portsmouth,
University of Utah, University of Virginia, University of Washington, University of Wisconsin,
Vanderbilt University, and Yale University.
