
# Tradeoffs in documenting your dataset

There is a balance in providing the right amount of data documentation. Too much is overwhelming. Too little means you don't know anything. For example, too much could be a folder with dozens of data files and several papers written on the topic; it's hard to know where to start. To little could be a lone `csv` file in a folder with no other information; this does not tell us what the data contains, or why it was collected. A good balance between the two extremes is to provide a README file that provides a human-friendly description of the data and variables. Other important features include data licenses, raw data, tidying scripts, machine readable metadata. It can be hard to know where to start.

There is no standard way to discuss the process of developing and creating the data and context. To help frame discussion around data documenting and reusability we can think of data reuse falling on a **da**ta **re**use **co**ntinuum, the DARECO. The DARECO has two axes: Effort to prepare, and Ease of understanding. We can then place particular datasets on the graph (see Figure 1.) to indicate the ease of understanding and preparation.

![An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set](figures/fig-effort-understanding.png).

**Tradeoffs**

* Documenting data is a time consuming process
* You need to consider the tradeoffs: does the time spent match the potential impact, would verification become easier with access to good quality data?

There are tradeoffs when it comes to perceived impact and effort to prepare of data. The tradeoff is time. Essentially, data with higher potential for reuse should be made as easy to understand as possible, and so may require lots of effort to prepare.

As an example, data from medical randomized control trials (RCTs) on cancer treatment can have high impact. Therefore, a lot of effort should be spent making the data easy to understand and use.

Comparatively, a small survey on simple demographics can have low impact. So it might not have a worthwhile tradeoff for ease of understanding and ease of preparation. This means effort put into preparing data documentation for a small survey to be made easy to use should be kept relatively simple and not overcomplicated.

Tradeoffs will change over time as the cost of making them easy to prepare and understand change. If it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent. This means that just because something might appear to have low impact, it should still be made easy to understand, if it doesn't take long to prepare that documentation.

Data that is easy to use should avoid being in a proprietary format that requires special software to read. For example, a CSV should be preferred over proprietary data formats, such as SPSS or SAS custom data types.

## Understanding tradeoffs

To help explain these descriptive qualities of the data sharing, we discuss three datasets and their position on the DARECO.