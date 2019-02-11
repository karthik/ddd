
One of the easiest solutions to making data available alongside an analysis is to include it in the same version controlled repository as the analysis scripts. This works well with the data file sizes are in the order of bytes to megabytes. When a reader clones the repository, the scripts and notebooks will be able to read all data files from relative paths with no further modifications to the code itself. Assuming the data would be useful beyond the context of the analysis, it would be beneficial to also archive it in a long-term repository.


