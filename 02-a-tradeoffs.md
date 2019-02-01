
# Tradeoffs in documenting your dataset

There is a balance between providing the right amount of data documentation. Too much is overwhelming. Too little means you don't know anything. For example, too much could be a folder with dozens of data files and several papers written on the topic; it's hard to know where to start. To little could be a lone `csv` file in a folder with no other information; this does not tell us what the data contains, or why it was collected. A good balance between the two extremes is to provide a README file that provides a human-friendly description of the data and variables.

But there are other features to think about as well, such as the data licenses, any tidying scripts, and whether data can be made machine readable.

There is no standard way to discuss the process of developing and creating the data and context. To help frame discussion around data documenting and reusability we can think of data reuse falling on a **da**ta **re**use **co**ntinuum, the DARECO. The DARECO has two axes: Effort to prepare, and Ease of understanding. We can then place particular datasets on this axis (see Figure 1.)

![An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set](figures/fig-robust-diff.png).

To help explain these descriptive qualities of the data sharing, we discuss three datasets and where they fall in the DARECO.

## Dataset 1: Forest Census Plot on Barro Colorado Island

The ["Foreest Ceneus Plot on Barro Colorado Island"](http://ctfs.si.edu/webatlas/datasets/bci/) provides an example of data that is time consuming to document, but also robust. It contains information on trees from a 50-hectare tree plot. Here they state:

> Censuses have been carried out in 1981-1983, 1985, 1990, 1995, 2000, 2005, 2010, and 2015. In each census, all free-standing woody stems at least 10 mm diameter at breast height were identified, tagged, and mapped. Over 350,000 individual trees have been censused over 35 years.

This is an enourmous, ongoing research effort. Brief context of the data is provided at the link, along with a link to the census plot data from 2012 at [this paper](https://repository.si.edu/handle/10088/20925). This provides an abstract and description of the data, along with co-authors, and a recommended acknowledgement. This dataset is classed as Robust and Difficult.

Robust because...

Difficult because it is a large research effort that not only involves expensive research

The impact of this kind of research is huge, as it provides information on biodiversity ...,  ..., ... .

Data that has high potential for impact should be made as robust as possible.
There is an important interaction between the importance of the data, the time spent to document it, and the risk and impact of the data. For example, data from medical randomized control trials (RCTs) can have high risk and high impact. So a lot of time should be spent documenting them. Comparatively, a small experiment with low risk and low impact might not have a worthwhile tradeoff for time spent to create a robust system. This documentation should be kept relatively simple and not overcomplicated, as it is cheap to repeat, and the cost and reward could be low.

This tradeoff will change over time as the relative costs also change. For example, if it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent.


## Dataset 2: Sensor data

Datasets obtained from sensor data, such as meteorological data are typically easy to create, and very robust.  This is because the sensors have to be very specific about what they are measuring, so a lot of the description of the type of data collected happens upstream at the instrument-design level. This flows down to when data is collected. As an example, let's explore a weather dataset from NOAA, the National Oceanic and Atmospheric Administration.

...describe NOAA dataset.

## Dataset 3: Most other datasets

Many datasets are "data dumped" into repositories with a paper. Phrases such as the following might be familiar:

> Researcher 1: "What do these columns mean?"
> Researcher 2: "Sorry, I created the data 14 years ago and I don't remember".

## The paper plane (Easy and Fragile)

An example of a fragile and quick process could be a lone data file in a folder, where the data is undocumented, and might be in plain or proprietary format. The format is more fragile if it is hard to read.

## Felix Culpa (goldilocs - easy and robust)

Felix Culpa means "stroke of luck", and this is a process that takes just the right amount of time so that it isn't overly time consuming, but it is also robust. One example of this could be a README to provide the human context, a machine readable statement of variables, and the raw data.
