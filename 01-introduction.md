
# Introduction

Data are a fundamental currency upon which scientific discoveries are made. Without access to good data, it becomes extremely difficult to advance science. Yet, much of the data on which research papers are based are never made available to anyone beyond the original authors (needs citation). Sharing datasets upon publication benefits both the authoring researchers, and the larger scientific community. Access to a greater diversity of data increases transparency and reproducibility. It also improves model training, as many different models can be tried and tested on latest data sources, closing the loop on research and application of statistical techniques. Existing datasets can be combined or linked with new or existing data, fostering the development and synthesis of new ideas and research areas. However, perhaps the greatest benefit of making data easily available are its impacts on reproducibility.

For nearly two decades, researchers who work in areas related to computational science have pushed for better standards to verify scientific claims, especially in areas where a full replication of the study would be prohibitively expensive. To meet these minimal standards, there must be easy access to the data, models, and the code and software used. The bioinformatics community has a strong culture around open source (cite https://genomebiology.biomedcentral.com/articles/10.1186/gb-2004-5-10-r80), and has made releasing software a mainstream activity. Many journals in these fields have also pushed authors to submit code (model implementations) alongside their papers, with a few journals going as far as providing a "reproducibility review" (cite http://science.sciencemag.org/content/334/6060/1226/tab-pdf).

The past decade has seen the rise of Data Science as a discipline distinct from statistics [@Donoho2017]. This has further cemented the role of free open source software (FOSS) tools as the key infrastructure blocks of reproducibility, and FOSS languages such as Python, R, and Julia are developing at a rapid rate. Community contributions to these languages are increasing at a tremendous rate, with many software packages being submitted to their respective package managers. As of 2018, PyPi (the Python package index) has > 125k packages, The Central R Archive Network (CRAN) has over 17k packages, with ~2k packages for Julia. These open source packages form the building blocks of a data scientists daily workflow.

Data analysis notebooks typically load a handful of libraries at the start, which provide all the routines necessary to read, transform, analyze, visualize and model data. Software packages depend on other packages (within and across languages) and provide new functionality for users. Data dependencies on the other hand are not as simple, and pose numerous challenges even to experienced data scientists. Why? Because data are far less standardized compared to software packages.

Here is a typical workflow for a typical data scientist for one of these problems:

* Files are read in from various locations.
* Different file formats are parsed
* Different data structures are standardized
* Data is wranged into a format suitable for data analysis
* Data is visualised
* Data is modelled.

There are three challenges that need to be managed to fully reproduce a data analysis: (1) The computing environment, (2), the code, and (3), the data.

The first two challenges are mostly solved. The computing environment is easily captured with modern tools such as Docker and binder [@docker; @binder]. This makes it simple to load a specific environment to run any analysis. Code is handled by version control with tools like Git and GitHub [@git; @github], paired with archiving such as Zenodo and figshare provide access to code (particularly model implementations)[@zenodo; @figshare]. All the necessary software is available from various package managers (and their numerous geographic mirrors and archives) making it easy to install any version of a software package. However, the biggest challenge, even today, remains easy and repeatable access to data in a data science notebook.

This paper aims to provide guidance on packaging and shipping data to maximise reproducibility. We discuss how to publish data, and detail the technical issues related to this, as well as challenges on licensing, and data embargos (especially for sensitive data). We also analyze the state of data, particularly how it is packaged, shared and made available as part of modern data analysis. How often are data shipped inside software packages? How does data format and size impact availability? Is this problem better solved in one or more of these popular data science languages?
