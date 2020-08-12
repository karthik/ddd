
# Example datasets


### Dataset 1: Forest Census Plot on Barro Colorado Island

The ["Forest Ceneus Plot on Barro Colorado Island"](http://ctfs.si.edu/webatlas/datasets/bci/) provides an example of data that is time consuming to document, but also robust. It contains information on trees from a 50-hectare tree plot. Here they state:

> Censuses have been carried out in 1981-1983, 1985, 1990, 1995, 2000, 2005, 2010, and 2015. In each census, all free-standing woody stems at least 10 mm diameter at breast height were identified, tagged, and mapped. Over 350,000 individual trees have been censused over 35 years.

This is an enourmous, ongoing research effort. Brief context of the data is provided at the link, along with a link to the census plot data from 2012 at [this paper](https://repository.si.edu/handle/10088/20925). This provides an abstract and description of the data, along with co-authors, and a recommended acknowledgement.

This dataset falls in the top right of the graph, at high effort to prepare, and high ease of understanding. It is high effort to prepare because it is a large research effort that not only involves expensive research in terms of time. It is high ease of understanding because

The impact of this kind of research is huge, as it provides information on biodiversity ...,  ..., ... .

### Dataset 2: Sensor data

...
Metadata from the data cannot be contained in the CSV file, but is available in the URL the csv was downloaded from: `http://dr15.sdss.org/optical/spectrum/view/data/format=csv?`
`plateid=1678&mjd=53433&fiberid=425&reduction2d=v5_7_0`

Which contains details of the data, specifically:

* plateid = 1678
* mjd = 53433
* fiberid = 425
* reduction2d = v5.7.0

These are unique identifying features of the data, which tell us:

* **plateid:** the unique plate used to explore a given section of night sky. 
* **mjd:** an integer that marks the "modified julian date" of the night of observation.
* **fiberid:** an integer of the fiber optic cable used to transmit light to the sensor.
* The **version** marked as `v5_7_0` is the pipeline version used for BOSS in DR12.

As a researcher who does not work in astrophysics, this information on the data was quite easy to retrieve from the SDSS website section called "Understanding SDSS spectroscopic data": https://www.sdss.org/dr12/spectro/spectro_basics/.

...

Datasets obtained from sensors such as meteorological data are typically easy to prepare and understand.  This is because the sensors have to be very specific about what they are measuring, so a lot of the description of the type of data collected happens upstream at the instrument-design level. This flows down to when data is collected. The telescope data from the Sloan Digital Sky Survey (SDSS) is a great example of this. It contains:

> ... the most detailed three-dimensional maps of the Universe ever made, with deep multi-color images of one third of the sky, and spectra for more than three million astronomical objects. --(https://www.sdss.org/)

The telescope data is very high quality, with the following features:

- Good metadata in SCHEMA, a machine readable standard
- Data in multiple formats:
- Released data in archives
- Data is available in a database
- Entire dataset available for download
- Interface to the data covers all skills
- The interface provides tutorials from school children to professional astronomers on how to read it
- Raw data before processed into database is also available

The SDSS provides different degrees of understanding, for different understanding. It is a huge project involving many people, and so would have provided enourmous effort to prepare, but has a high degree of understanding. It would be in the top right hand corner of the DARECO.

### Dataset 3: Most other datasets

Many datasets are "data dumped" into repositories with a paper. Phrases such as the following might be familiar:

> Researcher 1: "What do these columns mean?"
> Researcher 2: "Sorry, I created the data 14 years ago and I don't remember".

** Need to get an example of this.

## Summary

TODO: Needs a succint summary here
