

# Challenges in documenting your dataset

To provide a well documented dataset alongside research requires meeting several challenges. This section discusses what these challenges are, which are then later discussed in the paper.

- Better documentation requires more time.
- Higher impact data requires better documentation
- Pieces/features of documentation - metadata, license, etc
- Where to share data
- How to ensure long term provenance of the data
- Sharing data with colleagues: binary data is quick to share, but not as good as something like a simpler format like CSV (ask Laura DeCicco re this)

Providing the right amount of documentation for your data is challenging. Too much is overwhelming; too little and you don't know anything. To illustrate this, imagine two datasets. The first is contained in a folder with dozens of data files and several papers on the topic. The second contains only a single csv file. The first is too much; understanding it requires a high time cost. The second is too little; we don't know anything about what the data is or why it was collected. The challenge is to provide the right level of detail, somewhere between these two extremes. 

It takes more effort to prepare data to make it easy to understand and share. The challenge here is understanding how much time to spend to make it easier to understand before the gains in understanding are outweighed by the time taken to improve them.

There is also a challenge in understanding the impact of data. Data with high potential for impact should be made easier to understand and share. This can be seen in the research created from the 50 hectare plot.

There are many features to consider when documenting data, such as a README file with human-readable descriptions of data and variables, data licenses, whether to include raw data, data cleaning scripts, and machine readable metadata. Together these all help make the data easier to understand. These features are not clearly described in the scientific literature in the context of including them alongside research. 

To frame discussion around the challenges of data documenting, we can think of two features: "Effort to prepare", and "Ease of understanding". We can plot these on two axes and place datasets along each to indicate the ease of understanding and preparation (see Figure 2.).

![There is a big difference in the effort to prepare data, and how easy it is to udnerstand - look at the difference between most datasets, and something like a Randomized Control Trial (RCT).](figures/fig-effort-understanding.png).

## Challenges

**Challenges: higher potential impact means more time**

To improve data impact it needs more time to prepare so it is easier to understand. Accordingly, data with higher potential for impact and reuse should be made as easy to understand as possible. Therefore data with high potential impact requires more time and effort to prepare. For example, data from medical randomized control trials (RCTs) on cancer treatment can have high impact, so requires a lot of time and effort document. Comparatively, a small survey on simple demographics can have low impact. So it might not have a worthwhile tradeoff for ease of understanding and ease of preparation. This means effort put into preparing data documentation for a small survey to be made easy to use should be kept relatively simple and not overcomplicated.

Tradeoffs may change over time as the cost of making them easy to prepare and understand change. If it becomes technologically cheaper and easier to document data more rigorously in the same time as it takes to do poorly now, then there is no reason why more people cannot do this, even when the benefits are not immediately apparent. So if something might appear to have low impact, it should still be made easy to understand, if it doesn't take long to prepare that documentation.

Data that is easy to use should avoid being in a proprietary format that requires special software to read. For example, a CSV should be preferred over proprietary data formats, such as SPSS or SAS custom data types.

## Understanding tradeoffs

To help explain these descriptive qualities of the data sharing, we discuss three datasets and their relationship of **Effort to prepare**, and **Ease of understanding** in section 5.
