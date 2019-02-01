
# What belongs in the minimal structure for researchers

There are 8 pieces to an ideal structure for sharing your data:

1. Human readable description of the data
2. human readable data dictionary / code book
3. Machine readable meta data
4. A license for your data
5. Citation - how you want your data to be cited
6. raw data
7. scripts to tidy raw data
8. Tidy / analysis data

Out of these sections, the minimal viable format is:

- README
- codebook
- license
- citation

Each of these sections are now discussed.

# Human readable: A README

The README is the first place people will go to learn more about the data.
It is meant for someone to read and understand more about the data. It should contain the "who, what, when, where, why, & how" of the data. That is, who collected it, what the data is, when it was collected, where it was collected, and how. This should be brief. It should also provide links to the other sections. For example, it should contain links to the data dictionary, the machine readable data, the licence, how to cite the data, if raw data is provided, it should describe where to find it, any scripts to be used to turn the raw data to tidy data.

# Human readable data dictionary

Data dictionaries or code books are recommended for use when sharing data @Ellis2017.  Codebooks provide a human friendly reference for the data, typically consisting of variable names, variable labels, variable codes, and missing data. Variable names are short, descriptive names with no spaces or special characters, such as "job_position", "faculty_level", and "years_at_company". Variable labels are more descriptive, and provide more context for other reader, for example "University Job Position", "University Faculty Position Level", and  "Number of Years Worked at University [@McGill-codebook].

Variable codes apply to categorical (factor) varaibles, and are the values for their contents. For example, 0 = no, 1 = yes, and 0 = male and 1 = female. These should be consistent across similar variables to avoid a problem where one variable codes 0 as yes and another codes 1 and yes as well. Another code to consider is how date variables are formatted, this should be consistent.

Missing data are values that were not observed, but should have been, and the reason for their missingness is unknown. The code for missingness should be documented in the codebook, and should nominally be `NA`. Importantly, the corresponding code for missing must be recorded, even if it is -99, -9, ".", or "whatever", it needs to be known. If the reason for missingness is known then it should be recorded - for example censored data, or where there is patient drop out or measurement error. These can have different values, such as "unknown" or -99, and can be cleaned up upon data cleaning. [@White2013; @Broman2017]

# Machine readable metadata

## EML

The Ecological Metadata Language (EML) [@EML-about] is:

> ...an open source, community oriented project dedicated to providing a high-quality metadata specification for describing data relevant to the ecological discipline. EML provides a very highly structured approach to documenting data.

EML provides ways to describe the heterogenous data common in ecology, which range from the gene level to the biosphere level [@Jones2006]. The EML standard has a [documented standard](https://knb.ecoinformatics.org/#external//emlparser/docs/index.html)
), available on its website, and is widely used in ecology. There is an R package to interface into the EML package, called [`EML`](https://github.com/ropensci/EML), which allows for reading and creating EML files. Creating an EML document is time consuming, but the format is robust, so EML lives at the top right quadrant of DARECO.

* Look at Ellis + Leek paper on metadata

## JSON

JSON provides a human-friendly, machine readable format for data.

# Data licenses

Data with a license clearly establishes rules on how everyone can modify, use, and share data. Without a license, these rules are unclear, and can lead to problems with attribution and citation.

## Choosing a license

The world of licenses is big and complex, and it can be overwhelmeing to try and the right one for a use case. There are, however two licenses that are well suited for data sharing:

1. Creative Commons Attribution 4.0 International Public License (CC BY), and
2. Creative Commons CC0 1.0 Universal (CC0)

These are discussed briefly below.

### CC BY

Using a CC BY 4.0 for your data means that it can be shared and adapted, even for commercial use, but you must provide appropriate credit to the source, link back to the CC BY license, and clearly show if changes were made. Data under a CC BY 4 license cannot be sublicensed, that is - . There is also no warranty, so the person or people who obtained the data cannot be held liable. If data under a CC BY license is used, appropriate credit must be given - this means you list the names of the creators, and link back to the original source. The CC BY enforces attribution and due credit by default, but gives a lot of freedom for its use. The journal PLOS Comp Bio requires that data submitted cannot be more restrictive than CC BY [@plot-comp-bio-data]. For a brief overview of the CC BY, suitable to include in a README, see @ccby-short. For the full license, see @ccby-long.

### CC0

The CC0 is a “public domain” license. Data with a CC0 license means the data owners waive all their rights to the work, and it now "owned" by the public. The data can be copied, modified, and distributed, even for commercial purposes _without asking permission_. This license does not enforce the attribution and due credit, but does mean that the data can be freely shared. When using data with CC0, it is good practice to cite the original paper, but it is not needed. If you wish to use the CC0, see https://creativecommons.org/choose/zero/.  For a brief overview of the CC0, see @cc0-short, and for the full license, see @cc0-long.

## Other notices to be aware of

### Copyrighted data

If you are working with data that is already copyrighted, say for example under the CC BY or CC0 notice, then you must give ensure that you follow the appropriate guidelines for giving credit.

### Data embargo

Data under an embargo means that the data cannot be shared more widely until a specific release time. If you are sharing data under an embargo, then detailed information on the embargo needs to be included in the README, and in separate correspondence with those who receive the data.

## Adding a license to your data

Once you've chosen a license, you need to make sure that you provide a good breadcrumb trail back to your work. We recommend a modified guideline from the creative commons to follow the acroynm **ALMO**: **A**uthor, **L**icense, **M**achine-readability, **O**ther good stuff? @wiki-cc.

**A** is for *Author* - who gets attribution? The author is the person or people who own the copyright to the material, who are licensing it to the public for use. This should include the people who own the material, which can be one person, multiple people, or on behalf of an entity like an organisation. This should be noted.

**L** is for *License* - How to use the material? This is straightforward, it should be stated that the material is under a license, and which one it is. It is important to be specific here - it should be stated like this: "Creative Commons Attribution 4.0 License" and then provide a link to http://creativecommons.org/licenses/by/4.0/. It is important that something like just "Creative Commons" is used. This does not tell anyone anything about how the material can be used - there are many CC licenses. A visible branding of the CC license icon is also useful, when it is front-facing - these can be found at https://licensebuttons.net/. This sort of icon can be included in a README file. To add a license to the data, a license file must be included in the same folder as the data.

**M** is for _Machine-readability_ - can a machines read it? To assist detection of the licenses, creative commons provides a license choose tool (https://creativecommons.org/choose/) that gives a machine-readable html code that can be put onto a webpage. Alternatively, uploading your data to a platform such as zenodo [@zenodo] or figshare [@figshare] will also work, as it has support for CC licensing, and makes it machine readable.

**O** is for _other stuff_ - is there anything else that people should know about? This is a good place for things such as if the data is under an _embargo_ or if it has special _copyright issues_. It is also a place to mention if the work is derivative of other work, and give appropriate citations and credit. The CC licenses cannot have their terms changed, but you can grant additional permissions or warranties. For example, if you license something under CCBY but there are particular cases where you don't mind no attribution, this is the place to specify this.

## So how do you actually include the license with the data?

Putting it together, and following **ALMO**, in your licensed work, you need to include a license. This means that your data goes into a folder, and in that same folder, there is a README.md file, a LICENSE or LICENSE.md file, and optionally some other metadata folder that provides machine readable contents.
Before adding the license to the data, check if: (1) You have the right to the data, and (2) Did you find or collect the data? These should help you decide which license is the most appropriate. You can also use the license chooser: https://creativecommons.org/choose/, and include the badge in the README, in addition to the license.

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


# Data citation

How you want your data to be cited

# Raw data

## Scripts to tidy raw data

# Tidy / analysis data

# References

**Open knowledge foundation data specifications**

[Other notes from OKFN on "data package"](https://blog.okfn.org/?s=data+package)