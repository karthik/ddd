
# Tradeoffs in documenting your dataset

There is a balance between providing the right amount of data documentation. Too much is overwhelming. Too little means you don't know anything. For example, too much could be a folder with dozens of data files and several papers written on the topic; it's hard to know where to start. To little could be a lone `csv` file in a folder with no other information; this does not tell us what the data contains, or why it was collected. A good balance between the two extremes is to provide a README file that provides a human-friendly description of the data and variables.

But there are other features to think about as well, such as the data licenses, any tidying scripts, and whether data can be made machine readable.

There is no standard way to discuss the process of developing and creating the data and context. To help frame discussion around data documenting and reusability we can think of data reuse falling on a **da**ta **re**use **co**ntinuum, the DARECO. The DARECO has two axes: Effort to prepare, and Ease of understanding. We can then place particular datasets on the graph (see Figure 1.) to indicate the ease of understanding and preparation.

![An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set](figures/fig-effort-understanding.png).

**Tradeoffs**

There are tradeoffs when it comes to the ease of understanding and effort to prepare. These are typically related to the importance or the impact of the data. Essentially, data with high potential for impact should be made as easy to understand as possible, and so may require lots of effort to prepare.

As an example, data from medical randomized control trials (RCTs) on cancer treatment can have high impact. Therefore, a lot of effort should be spent making the data easy to understand and use.

Comparatively, a small survey on simple demographics can have low impact. So it might not have a worthwhile tradeoff for ease of understanding and ease of preparation. This means effort put into preparing data documentation for a small survey to be made easy to use should be kept relatively simple and not overcomplicated.

Tradeoffs will change over time as the cost of making them easy to prepare and understand change. If it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent. This means that just because something might appear to have low impact, it should still be made easy to understand, if it doesn't take long to prepare that documentation.

Data that is easy to use should avoid being in a proprietary format that requires special software to read. For example, a CSV should be preferred over proprietary data formats, such as SPSS or SAS custom data types.

## Understanding tradeoffs

To help explain these descriptive qualities of the data sharing, we discuss three datasets and their position on the DARECO.

### Dataset 1: Forest Census Plot on Barro Colorado Island

The ["Foreest Ceneus Plot on Barro Colorado Island"](http://ctfs.si.edu/webatlas/datasets/bci/) provides an example of data that is time consuming to document, but also robust. It contains information on trees from a 50-hectare tree plot. Here they state:

> Censuses have been carried out in 1981-1983, 1985, 1990, 1995, 2000, 2005, 2010, and 2015. In each census, all free-standing woody stems at least 10 mm diameter at breast height were identified, tagged, and mapped. Over 350,000 individual trees have been censused over 35 years.

This is an enourmous, ongoing research effort. Brief context of the data is provided at the link, along with a link to the census plot data from 2012 at [this paper](https://repository.si.edu/handle/10088/20925). This provides an abstract and description of the data, along with co-authors, and a recommended acknowledgement.

This dataset falls in the top right of the graph, at high effort to prepare, and high ease of understanding. It is high effort to prepare because it is a large research effort that not only involves expensive research in terms of time. It is high ease of understanding because

The impact of this kind of research is huge, as it provides information on biodiversity ...,  ..., ... .

### Dataset 2: Sensor data

Datasets obtained from sensors such as meteorological data are typically easy to prepare and understand.  This is because the sensors have to be very specific about what they are measuring, so a lot of the description of the type of data collected happens upstream at the instrument-design level. This flows down to when data is collected. As an example, let's explore a weather dataset from NOAA, the National Oceanic and Atmospheric Administration.

...describe NOAA dataset.

### Dataset 3: Most other datasets

Many datasets are "data dumped" into repositories with a paper. Phrases such as the following might be familiar:

> Researcher 1: "What do these columns mean?"
> Researcher 2: "Sorry, I created the data 14 years ago and I don't remember".

## Summary
