

# Tradeoffs in documenting your dataset

There is a balance in providing the right amount of data documentation. Too much is overwhelming; too little and you don't know anything. For example, a folder with dozens of data files and several papers written on the topic is too much; it's hard to know where to start. A lone `csv` file in a folder with no other information is too little; it does not tell us what the data contains, or why it was collected. A good balance between the two extremes could be a README file with human-readable descriptions of data and variables. Other features to include data licenses, raw data, tidying scripts, machine readable metadata. But it can be difficult to know what to include, and how much detail to provide. This section explores this, discussing how to document data.

Two axes help frame discussion around data documenting and reusability: **Effort to prepare**, and **Ease of understanding**. We can then place particular datasets on the graph to indicate the ease of understanding and preparation (see Figure 2.).

![An illustration of the continuum from only data, to data + readme + machine readable code + full instruction set](figures/fig-effort-understanding.png).

**Tradeoffs**

To improve data impact it needs more time to prepare. Accordingly, data with higher potential for impact and reuse should be made as easy to understand as possible, so it will require more effort to prepare. For example, data from medical randomized control trials (RCTs) on cancer treatment can have high impact. Therefore, a lot of effort should be spent making the data easy to understand and use. Comparatively, a small survey on simple demographics can have low impact. So it might not have a worthwhile tradeoff for ease of understanding and ease of preparation. This means effort put into preparing data documentation for a small survey to be made easy to use should be kept relatively simple and not overcomplicated.

Tradeoffs may change over time as the cost of making them easy to prepare and understand change. If it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent. So if something might appear to have low impact, it should still be made easy to understand, if it doesn't take long to prepare that documentation.

Data that is easy to use should avoid being in a proprietary format that requires special software to read. For example, a CSV should be preferred over proprietary data formats, such as SPSS or SAS custom data types.

## Understanding tradeoffs

To help explain these descriptive qualities of the data sharing, we discuss three datasets and their relationship to **Effort to prepare**, and **Ease of understanding** in section 5.
