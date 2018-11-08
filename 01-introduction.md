
# Introduction

- Importance of data sharing in research and data science
- Various use cases for the data (teaching, training models, research applications)

- A small opening section on the rise of modern data science. This paragraph should capture something about open source tools and how they have enabled the growth of modern data science.
- Python, R, and to a smaller extent, Julia, have emerged as the three dominant languages used by data scientists.  Despite numerous design differences among these languages, all three share various common traits. These languages are all open source and consist of numerous user contributed software packages that perform modular tasks. In a modern workflow, a data scientist can call upon relevant libraries and use exported routines to solve the problem at hand. The biggest advantage of this approach is that software dependencies are really easy to express. In R, a user might load a library at the top of a script by calling `library(dplyr)`. In Python, users import packages by calling `import pandas`. Users can also can selectively export necessary functions (instead of an entire package). 

Data dependencies on the other hand are not as simple and pose numerous challenges even to experienced data scientists. For starters, data are far less standardized compared to software packages. A typical data scientist will have to rely on various custom scripts to read files from various locations, parse numerous file formats, standardize across different data structures and wrangle the data into a usable format before they can be visualized and modeled.  For an analysis to be fully reproducible, one would need access to the computing environment, the code and the data. 

The first two issues have been mostly solved.
- Say something about containers, kubernetes, Jupyter, Rstudio cloud, CRAN, pip, Docker, git and binder for the first part.
- Code, for the most part is easily reusable when packaged properly and deposited into the appropriate package manager.
- The last bit of this puzzle, data is the most challenging aspect.

In this paper we analyze the state of data, particularly how it is packaged, shared and made available as part of modern data analysis compendiums. How often are data shipped inside software packages? How does data format and size impact availability? Is this problem better solved in one or more of these popular data science languages? We then provide guidance on how a data scientist can package and ship their data to maximize reproducibility. In addition to technical issues, we also cover challenges such as licensing, data embargos (especially for sensitive data), and advice on how to publish these datasets.

