
# Ten simple rules for publishing data

1. **Decide whether publishing is appropriate for your data** It is important for everyone to publish their data in a research data archive to ensure long-term availability, curated metadata, and that they are preserved in the future. However this step might not be necessary depending on the stage and purpose of your project. In cases where this step is cumbersome, ensuring that the data are readily available by other means.
2. **Include a README** file with your data archive. README files have a long history dating back to the 1970s in the context of free software and are a requirement of the GNU standard. In a more generic sense, README files are a form of simple documentation that describe the contents of a directory, along with brief descriptions, the type of license used and information on how to cite the collection.
3. **Provide a codebook** or glossary for each variable. Codebooks provide a free-form way to document the data, their structure and underlying details of how they were collected (https://www.emgo.nl/kc/codebook/). More importantly they provide a way for future consumers of the data to understand how the variables were named, how missing data were documented, along with any additional information that might impact how the data are interpreted.

4. **Provide a machine readable format** for your data that describes what each column contains. This can be a json schema file, which also helps websites like Google Dataset Search automatically discover your data.
5. **Provide the data in its rawest form** in a folder called "data-raw". This 
 ensures provenance of your data by keeping a master copy from which all
other tidied up data can be created.
6. **Provide [open source?] scripts** used to clean data from rawest form into tidy/analysis ready format. These describe the steps taken to prepare the data,
which helps explain and document any decisions taken during the cleaning phase.
These should ideally operate on some raw data stored in the "data-raw" folder (rule 5).
7. **Keep additional copies in more accessible locations**: Even if you archive the data somewhere long-term, keep a second (or additional copies) in locations that are more readily and easily accessible for data analysis workflows. These include services like GitHub, GitHub LFS and others where fast CDNs make access and reuse practical, but fall back to Zenodo or similar in case these services were to go away.
8. **Use a hash function like MD5 checksum** to ensure that the data you deposited are the same that are being made available to others. Hash functions not only remove redundancy by removing the need to download the same data again, but also help ensure that the data are valid.
9. **Only add a citation if your data has a DOI**. A citation only makes sense when your data has a DataCtie compliant DOI, which is automatically provided when data is published in repositories like Zenodo and Dryad. Even then a citation may not accrue references, but without a DOI, it is gauraunteed not to.
10. Store a copy of your data in simple formats such as csv: CSV files follow a flat and extremely simple schema and can be opened by any text editor. These files can also be easily parsed by any data science programming language. Modern software packages allow for fast reads without consuming too much memory and these tools also allow for easy modification of the data.
