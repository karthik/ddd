library(carbonate)
json_ld <- '{
  "name": "demographics",
  # here we list the data files in this dataset
  "resources": [
    {
      "path": "demographics.csv",
      "schema": {
        "fields": [
          {
            "name": "age",
            "type": "integer"
          },
          {
            "name": "height",
            "type": "number"
          },
          {
            "name": "nationality",
            "type": "string"
          }
          ]
      }
    }
    ]
}
'

json_ld

x <- carbon$new(readr::read_lines(json_ld))
x$language <- "JSON"
x$template <- "solarized light"
x$add_window_control <- FALSE
x$add_drop_shadow <- FALSE
x$add_line_number <- TRUE
x$browse()
