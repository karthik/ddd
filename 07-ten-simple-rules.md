# Ten simple rules for publishing data

1. **Publish the data with a DOI**. Archive somewhere that is persistent and long-term and ideally a member of CLOCKSS. This allows the user to check/confirm when the data was used/published.
2. **Include a README** file with a human readable description of the data
3. **Provide a codebook** or glossary for each variable
4. **Provide a machine readable format** for your data that describes what each column contains. This can be a json schema file, which also helps websites like Google datasearch automatically discover your data
5. **Provide the data in its rawest form** in a folder called “data-raw”
6. **Provide [open source?] scripts** used to clean data from rawest form into tidy/analysis ready format.
7. **Keep additional copies in more accessible locations**: Even if you archive the data somewhere long-term, keep a second (or additional copies) in locations that are more readily and easily accessible for data analysis workflows. These include services like GitHub, GitHub LFS and others where fast CDNs make access and reuse practical, but fall back to Zenodo or similar in case these services were to go away.
8. **Use a hash function like MD5 checksum** to make it easy for an end user to verify the same data that you used.
9. **Include a citation** (or how best you want to be cited for your contribution)
10. See other 9 things.
