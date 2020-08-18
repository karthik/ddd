# A Realistic Guide to Making Data Available Alongside Code to Improve Reproducibility

The idea of open and transparent science dates back to the founding
principles of The Royal Society of London in 1660. The movement, which
has seen shifting support over the years, has enjoyed growing popularity
over the past decade [[(Nielsen 2020; Peng
2011)]{.underline}](https://paperpile.com/c/uLcMjp/LfmX+WJjh) mainly
among early career researchers (McKiernan et al. 2016). A key motivation
for practicing openness is the notion that sharing all research
artifacts will allow others to reproduce and verify results, thereby
improving trust and verification of those findings. Jon Clarebout
famously wrote in 1992 that reproducibility in computationally oriented
fields had become so trivial that non experts could do the task.
Clarebout\'s optimistic vision was a little ahead of its time as the
tools and technologies available in the early nineties for literate
programming presented too high of a barrier for most researchers to
adopt without incurring a significant loss in productivity (Barnes
2010).

Meaningful progress on computational reproducibility, the ability of an
independent researcher to recreate figures, tables and key findings,
became more of a practical reality in the late 2000s as new tools and
services came into existence. Scientists started sharing more code and
software, partly due to the rapid increase in training opportunities
made possible by organizations like The Carpentries, combined with the
growing adoption of Github by scientists [[(Ram 2013; Zagalsky et al.
2015)]{.underline}](https://paperpile.com/c/uLcMjp/A52b+9zKW). The
bigger driver for this is more likely driven by the growing popularity
of data science as a discipline distinct from statistics (Donoho 2017).
This rapid growth in data science has been catalyzed by a Cambrianesque
explosion of open source software tools. Programming languages such as
Python, R and Julia have helped scientists implement and share new
methods to work with data (R Core Team 2019; "Python," n.d.; Bezanson et
al. 2017). Each of these languages enjoys support of thriving
communities of researchers and software developers who contribute many
of the building blocks that make them popular. Modern scientists now
have access to many interactive computational frameworks (e.g. Jupyter,
RMarkdown, Stencila, Observable) that can interact with kernels from
dozens of programming languages. Beyond notebooks to run the code, a
reader will also require access to the same software dependencies. In a
study of applied computational research, [[(Collberg et al.
2014)]{.underline}](https://paperpile.com/c/uLcMjp/Pvmq) and colleagues
were only able to install and run less than 20% of the software
described in publications. In addition to locating software, one still
has to install the right versions. Although this problem is far from
solved, technologies like Docker have alleviated some of these concerns.
Researchers can share Dockerfiles to recreate computational environments
[[(Boettiger 2015)]{.underline}](https://paperpile.com/c/uLcMjp/m7Ye).
Services like Binder can then leverage Docker and make possible to share
the computational environments in which these notebooks were run. The
barriers to verification are now low enough that trivial reproducibility
is sometimes a click away, free from the misery of software installation
[[(Jupyter et al.
2018)]{.underline}](https://paperpile.com/c/uLcMjp/ghqT).

Notebooks however, are an incomplete solution for computational
reproducibility. For a piece of computational research to be minimally
reproducible, it requires three distinct elements: 1) Code; 2) Computing
environment, and 3) Data. There has been tremendous progress on the
first two, despite some limitations of existing tools and practices
(Poisot et al. 2019). While it took nearly two decades for Clarebout\'s
vision to become reality, improvements in technology and motivations
played a strong role in the culture change. Sharing code wasn\'t just
easy at first [[(Barnes
2010)]{.underline}](https://paperpile.com/c/uLcMjp/RTwr), but became a
social and normative part of academic culture. The next stage of this
evolution, turning code into software, also became popular with
increasing training opportunities [[(Wilson 2014; Teal et al.
2015)]{.underline}](https://paperpile.com/c/uLcMjp/vID8+Q2X7), tooling
[[(Hadley et al.
2018)]{.underline}](https://paperpile.com/c/uLcMjp/nrI1), and
recognition as a scholarly contribution [[(Smith et al.
2018)]{.underline}](https://paperpile.com/c/uLcMjp/kwXE). Getting
researchers to share usable data has been more of a struggle.

> ![](media/image1.png){width="4.940430883639545in"
> height="2.557292213473316in"}
>
> From [[(Nosek )]{.underline}](https://paperpile.com/c/uLcMjp/MEyC)

+-------------+-------------+------------+------------+-------------+
| **          | **          | > **Data** | > **Code** | **Co        |
| Mechanism** | Incentive** |            |            | mputational |
|             |             |            |            | En          |
|             |             |            |            | vironment** |
+=============+=============+============+============+=============+
| Policy      | Required    |            |            |             |
+-------------+-------------+------------+------------+-------------+
| Incentives  | Rewarding   |            |            |             |
+-------------+-------------+------------+------------+-------------+
| Communities | Normative   |            |            |             |
+-------------+-------------+------------+------------+-------------+
| UI/UX       | Easy        |            |            |             |
+-------------+-------------+------------+------------+-------------+
| Inf         | Possible    |            |            |             |
| rastructure |             |            |            |             |
+-------------+-------------+------------+------------+-------------+

Table 1: Needs a caption

[[Nosek]{.underline}](https://paperpile.com/c/uLcMjp/MEyC) describes the
strategies for culture change, especially when the status quo is too
entrenched. Beyond motivation, skills, tools, and incentives are
critical to enable such change. In a five step process, Nosek describes
how achieving lasting culture change requires us to show proof of
concept that an activity is possible, then improve the infrastructure to
make it easy, then increase awareness to make it normative. Once there
is a critical mass, find ways to reward those who put it into practice.
After these steps, it would then be possible to require this of everyone
Figure 1, table 1). This framework provides a useful lens through which
to examine adoption of code, computational environments and data for
reproducibility. With code, we have slowly progressed through these
stages. While no journals require that authors share code, the venues to
share, along with the necessary training have paved the way for
incentives and credit. All of the necessary foundation to make code
sharing required are in place. For computational environments, Docker
makes it possible to share them in most common use cases [[(Boettiger
2015)]{.underline}](https://paperpile.com/c/uLcMjp/m7Ye). But running
them still requires expertise and time on the part of reviewers. More
recent open services like Binder [[(Jupyter et al.
2018)]{.underline}](https://paperpile.com/c/uLcMjp/ghqT) make it
possible to run notebooks atop Docker images, but the technology is
still new and slowly gaining adoption. There is still a long way to go
before sharing computational environments in academia becomes
mainstream. Finally, for data, we have implemented these steps out of
order. The FAIR data principles were introduced in 2016 with good
intentions [[(Wilkinson et al.
2016)]{.underline}](https://paperpile.com/c/uLcMjp/qYNC) and describe
the desired attributes for research data. That they be findable (good
metadata), accessible (deposited somewhere persistent), interoperable
(easily combined with other datasets), and be reusable. We as a
community started out by making data required before demonstrating how
this would directly benefit those who share data. Researchers are asked
to deposit their data in one of many institutional or commercial
repositories. Many journals even require it as a condition for
publication via policy. However, the cost of preparing data for reuse
remains high, and the career incentives to do so are almost
non-existent. Until we make data reuse easier and more rewarding, no
level of policy is going to improve the state of data sharing.

Despite the increase in data being shared alongside publications
[[(Culina et al.
2020)]{.underline}](https://paperpile.com/c/uLcMjp/9puK), the status quo
of data sharing in science is not good. \@Rowhani-Farid2016 showed that
7 of 157 (4.5%) sampled papers in the British Medical Journal shared
data, and only 14% of articles claiming open sharing of data actually
shared their data. Similarly, [[(Stodden et al.
2018)]{.underline}](https://paperpile.com/c/uLcMjp/4rT0) showed only 36%
of papers in the journal *Science* shared data, despite the Journal's
data sharing policy. [[(Colavizza et al.
2020)]{.underline}](https://paperpile.com/c/uLcMjp/oxOo) reflects
similar findings for PLOS and BMC journals. There are numerous examples
of similar problems in other fields, such as psychology, biology, and
bioinformatics. The reality is that while data sharing is increasing in
many fields such as ecology, the amount of data that can be reused is
likely lower [[(Culina et al.
2020)]{.underline}](https://paperpile.com/c/uLcMjp/9puK). To make shared
data useful, we need to realign incentives for researchers.

Tools to prepare datasets and metadata (*the infrastructure*) and best
practices (guidelines) for reuse are sparse [[(Arslan 2019; Roche et al.
2015)]{.underline}](https://paperpile.com/c/uLcMjp/tDit+cIQF). Unlike
code, datasets are far more diverse in terms of heterogeneity, size, and
formats. This makes them particularly challenging to standardize or
easily "install" where the code is running. There are some efforts
working towards improving this process, such as gogetdata , the 'dat'
project, and a private company, Quilt (ref, ref, ref).

Depositing data with rich metadata is laborious making it a pro forma
activity outside of speciality repositories like Dryad that employ
curators. Lastly, the infrastructure to track and get credit for data is
non-existent. Datasets currently do not accrue citation credit since
they are not tracked.

**Improving the state of reusable data sharing**

As academic data scientists, we spend considerable time cleaning messy
data and believe that preparing data for easy reuse can be a catalyst to
improve the quality of data and pave the way for other incentives such
as community adoptions, which will then create the culture change needed
to credit data similar to publications. In this note, we describe a set
of practices that researchers can adopt to make data more useful in the
context of reproducibility. It should not be a huge burden to share data
in a format that is readily usable by others. And similarly, this burden
should be reduced by those who want to use another's data.

*To make data more reusable, we need to make it easiser to generate
metadata, standardise good practices within and across communities, and
make reusable data sharing a recognized, normalised, part of research.
Here we present a set of best practices to enable this change....*

These include documentation (\@ref(section)), licensing
(\@ref(section)), citation (\@ref(section)), code (\@ref(section)), raw
data (\@ref(section)), and analysis ready data (\@ref(section)). We also
discuss considerations for sharing of small, medium, and large data
(\@ref(section)).

**Documentation (READMEs)**

A README is often the first place users will look to learn more about a
directory [[(Prana et al.
2019)]{.underline}](https://paperpile.com/c/XRb9SO/vh73). The README is
a concise text file containing guidance on how to read and interpret the
directory - the who, what, when, where, and how
([[https://betta.io/blog/2017/02/07/developer-experience-github-readmes/]{.underline}](https://betta.io/blog/2017/02/07/developer-experience-github-readmes/)
and Prana et al 2019). For example, a README in a data repository might
explain which directories contain data, tidying scripts, and also why
data was collected. The README should be placed in the top level of the
project, and there can be multiple README files in a project. In the
context of datasets, READMEs are particularly useful when there are no
reliable standards.

**Licences**

A license for data clearly establishes the rules for its use, and
whether it can be modified or shared. Without a license, or with a
non-standard license, these rules are unclear, and lead to issues with
use, attribution and citation. We recommend using a license from
Creative Commons (ref), specifically, we recommend CCBY and CC0 as they
are commonly used, and provide simple rules for attribution, warranty,
and use. We recommend against non-standard licenses, such as those
custom written by the authors, as some terms can render them unusable.

Once a license is chosen, a LICENSE file should be provided, containing
the entire license in the top level of the directory. The license type
should be mentioned in the README, if used.

CC BY requires appropriate credit and attribution, but data can be
shared and adapted, even for commercial use, provided changes are
described. The CC0 is a \"public domain\" license, meaning data owners
waive all rights, and the work is now \"owned\" by the public. CC0 data
can be freely shared, copied, modified, and distributed, even for
commercial purposes \_without asking permission\_. When using data with
CC0, it is good practice to cite the original work, but is not required.
Both CCBY and CC0 provide no warranty. Brief and full overviews of CCBY
and CC0 can be found at \[\@ccby-short \@ccby-long, \@cc0-short,
\@cc0-long\].

Some data repositories and journals will automatically require a license
when submitting data. For example, Dryad requires CC0
([[https://blog.datadryad.org/2011/10/05/why-does-dryad-use-cc0/]{.underline}](https://blog.datadryad.org/2011/10/05/why-does-dryad-use-cc0/)
and
[[https://datadryad.org/stash/faq]{.underline}](https://datadryad.org/stash/faq))
and the journal PLOS Comp Bio, requires licences for data that are not
more restrictive than CC BY \[\@plos-comp-bio-data\].

(carbon.sh Figure).

**\
\#\# (Minimal Metadata) Machine readable metadata {\#machine-metadata} /
data dictionaries**

There are three benefits to a dataset having metadata: (1) They provide
context by describing variables to humans; (2) They avoid errors by
describing and preserving variable types for machine readability; (3)
They make data easier to find online by facilitates indexing
\[\@google-data-search\]. Three pieces of metadata should be considered:
(1) **variable names**, (2) **variable descriptions**, and (3) **unit
text**. These should be curated by a person. Metadata created should be
clearly labelled in a folder or in files named METADATA.

**Variable names** are short, descriptive names with no spaces or
special characters, such as \"job\_position\" or \"date\". **Variable
description** describes the measured variables, e.g., \"University Job
Position\" or \"Date Started\", and should also define *variable codes*
and *missing data*. **Unit text** defines the type of variable recorded
(e.g., string, date, numeric, integer), and avoids serious errors of
misrepresented data (e.g., a column of a gene sequence being interpreted
as a date). For more details on this we recommend reading
\[\@Broman2017; \@Ellis2017; \@Arslan2019\].

Metadata should provided in plain text files following a standard
format. Such formats include the Ecological Metadata Language
\[\@EML-about\] (EML), which uses XML (The eXtensible Markup Language),
and Table Schema, which uses JSON-LD (Java Script Object Notation -
Linked Data) (Figure XX of JSON-LD). One implementation of this is
Frictionless Data \[\@Fowler\], which provides a language agnostic way
to document data - to learn more see \[@\].

EML is widely used in Ecology (for example,
[[https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-cwt.3091.13]{.underline}](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-cwt.3091.13)).
JSON-LD provides advantages over EML, by having fields to facilitate
data discovery with google dataset search (ref). We recommend JSON-LD
over EML, as it is more human readable, shorter, and quicker and easier
to read and write. For more information on tooling to assist generating
metadata, see
\[[[https://knb.ecoinformatics.org/tools/morpho]{.underline}](https://knb.ecoinformatics.org/tools/morpho)\],
and \[\@Arslan2019\].

\*\*Figure of JSON-LD carbon.sh\*\*

**\# Raw data vs analysis read data**

Raw data is the first format of data provided before any cleaning has
taken place (e.g., data in some binary or proprietary format). It should
be placed in its own folder. Data used in analysis should be provided,
especially if computationally intense to derive. It should be in its own
folder, and to maximise interoperability, recorded in a plain text
(e.g., csv, tsv), not a binary format (e.g., .rds, .sav, .xlsx). Ideally
data should be in \"Tidy Data\" form, where variables are in columns,
observations in rows, and each cell has only one value
\[\@Wickham2014\].

(carbon.sh figure XX)

We don't have particular recommendations for non tabular of data, like
binary images, but given the ubiquity of tables in papers, these
recommendations will be broadly useful. For other data formats we
recommend using a copy of the most robust common format and avoid the
latest tools that may be more brittle and likely to change in the
future. For example, for an image, a TIFF image in addition to a custom
photoshop file.

**\# Data cleaning scripts**

Code used to transform data from its raw format into analysis ready form
should be kept in the same place as raw data (carbon.sh figure XX).
Ideally, this transformation should involve only scripted languages
(e.g, R, Python, Matlab, etc), but any non-scripted data preparation
steps should be recorded in a plain text file.

**\#\# Citation: How you want your data to be cited {\#cite}**

Citation is important for provenance, and credit. Citing data clarifies
the data version used (provenance), and provides authors a citation
(credit). To ensure these are provided, data needs to have an accession
number, such as a Digital Object Identifier (DOI). A DOI is a permanent,
unique identifier for a digital object such as a paper, poster, or
software, and is a prerequisite for citation. If a DOI or accession
number is unavailable, a citation will be meaningless, as it cannot be
tracked by any means. A file named CITATION should be placed in the
directory at the top level. It should contain a DOI, and could be in
\`.bibtex\` format - **(carbon.sh figure)**. Avenues that provide DOIs
are discussed in (**\#avenues**)

**\# Avenues to share data (\#avenues)**

There are different avenues to share data, and although the terms are
sometimes used interchangeably, they are, in fact, different. These
include: (1) Data sharing: Making data publicly available; (2) Data
archiving: Depositing data somewhere permanent; (3) Data publishing:
writing a paper to explain the archived data.

As discussed in (\#citation), we recommend data are archived using a
platform that generates an accession number such as a DOI. For sharing
data collected for research, the most relevant homes are the research
data repositories \*\*zenodo\*\*, \*\*dryad\*\*, or \*\*Open Science
Framework\*\* (OSF). In addition to minting DOIs, they also provide
citation templates that can be used in (\#citation-section).

Zenodo can be contacted to arrange special cases for storage of large
data. Special hosting can be arranged via specially contacting zenodo or
your research institute. If using a research institute's library service
to share data, ensure a DOI is provided so it can be accurately
identified and cited.

There are many alternatives to these three, for example, an astronomy
project may host its data at the Sloan Digital Sky Survey (SDSS), and
genetic data can be hosted at GenBank (\@GenBank). Importantly, these
all provide some form of accession number. We recommend adhering to
community standards when deciding where to publish data, as this will
likely improve data reuse. Large data may also be shared via domain
specific venues (e.g., in genomics or astronomy), where appropriate.

We recommend against depositing data in local file storage that does not
provide DOI or accession numbers. For example, \@50Hectares is hosted on
a university server and accessed via FTP. It is not possible to
effectively provide effective provenance and credit.

Although it is fine to share data among collaborators using temporary
cloud storage (like Dropbox, Google Drive), once the paper is public,
the data needs to be hosted somewhere persistent. While this approach is
useful while iterating on the paper, it does not scale to a larger
readership and is highly prone to disappearing (lack of permissions,
etc). Just archive the data.

Journals provide data papers, where they provide a formal publication
explaining data that is archived. This is a familiar avenue for
researchers to receive credit and citation. Writing a data paper can be
very useful for researchers, however, data papers lack guidelines on how
to structure data for effective reuse and sharing. We recommend
partnering with \@dryad to archive data and link it with research
papers, as they provide a person to help curate your data, improving
usability.

**\# Data as part of open source packages**

Data can be distributed alongside code using a format such as a package
in R, Python, and Julia \[\@nycflights; \@penguins; \@python-data;
\@julia-r-data \]. A package or module structure provides an advantage
as it can be "installed" and loaded just like code.

Despite the advantages of sharing data as a software package, there are
a few major disadvantages. Firstly, packaging data inside a software
package makes the data availability language centric. Users who work in
other languages are unlikely to download and export data out of a
package. Secondly, data size can be a limitation depending on the
repository (CRAN, the R repository, for example, limits package sizes to
5mb although there are workarounds \@Brooke\_Anderson2017). Other
fields, such as bioinformatics have a process of sharing data through
repositories like Bioconductor, with larger data size. Thirdly, there is
the cost of authors and data curators/custodians understanding
intricacies of package development in order to share data.

Packaged data and archival on venues like Zenodo are not mutually
exclusive. We recommend researchers first archive data in a long-term
data repository (Section \\\@ref(publish-repos)), before including it in
a package. This makes the data easily citable wherever data is
referenced.

\# Considerations for data size

How data is shared can change depending on its size. Defining data size
will always be somewhat ill-defined, since storage capacity and norms
constantly change. We consider data sizes in reference to a moderately
priced laptop, where small data fits on computer memory (RAM), medium
data does not fit on RAM, and big data does not fit on the hard disk.

No matter the size, the data should be archived with an accession number
or DOI.

Small data has more options in how it is shared - you can bundle it with
your analysis code ( as in (\#rawdata) or (\#analysis-data)), or in
software (\#data-packages). For medium data, consider a venue like
zenodo for archiving. Sharing medium data might require it to be broken
into separate chunks for reading (e.g., \`teaching-1.csv\`,
\`teaching-2.csv\`, etc.), and scripts provided to read it. Large data
will require liaising with services from \#avenues , or local research
institute library to make special arrangements, to ensure there is some
way to gain access, and also maintain a DOI.

\# Conclusion

Although data sharing is widely mandated by funders, journals, and
academic societies, the amount of usable data remains appallingly low.
The mere act of depositing data does not make it reusable or useful to a
potential reader. Although data citations do not currently impact
promotion and tenure packets, there is anecdotal evidence that papers
sharing usable data accrue more citations (Piwowar). Over time, the more
useful we make the data, the more likely incentive mechanisms will take
hold.

The steps leading up to requiring data sharing are still vague and
disincentivized. In comparison, although few journals require that code
be submitted with publications, it is more likely to be adopted given
the foundation we have put in place. We have taught researchers how to
write modular code via popular training initiatives such as The
Carpentries. Commercial tools like GitHub have made code sharing fun and
productive. For more advanced researchers, data science languages have
made it easier to package and disseminate code as software. If we now
require mandatory code sharing, it is quite likely that more of it will
be useful than the data currently being shared.

To make data sharing truly useful, we need to make the process easier,
improve tools and training, then reward and incentivize researchers who
engage in such practices. Only then can data truly be useful.
