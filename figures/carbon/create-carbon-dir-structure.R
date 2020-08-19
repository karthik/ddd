library(carbonate)
egg <- 
  'proj-name
├── README.md
├── LICENSE
├── CITATION
├── metadata
│   ├── access.csv
│   ├── attributed.csv
│   ├── biblio.csv
│   └── creators.csv
├── raw-data
│   ├── raw-data.csv
│   └── 01-read-tidy-raw.R
└── data
    └── final-data.csv
'

egg

x <- carbon$new(readr::read_lines(egg))
x$language <- "Plain Text"
x$template <- "solarized light"
x$add_window_control <- FALSE
x$add_drop_shadow <- FALSE
x$add_line_number <- TRUE
x$browse()
