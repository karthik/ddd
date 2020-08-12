example_table_schema <- data.frame(age = c(12, 21, 37),
                                   height = c(161.5, 181.2, 178.3),
                                   nationality = c("Australian",
                                                   "American",
                                                   "New Zealand"))

knitr::kable(example_table_schema) %>%
  clipr::write_clip()

# pkg::pkg_install("ropenscilabs/dataspice")
# install_github("ropenscilabs/dataspice")

# is there a way to go from:
# 
# | age| height|nationality |
# |---:|------:|:-----------|
# |  12|  161.5|Australian  |
# |  21|  181.2|American    |
# |  37|  178.3|New Zealand |
#   
#   ```
# {
#   "name": "demographics",
#   # here we list the data files in this dataset
#   "resources": [
#     {
#       "path": "demographics.csv",
#       "schema": {
#         "fields": [
#           {
#             "name": "age",
#             "type": "integer"
#           },
#           {
#             "name": "height",
#             "type": "number"
#           },
#           {
#             "name": "nationality",
#             "type": "string"
#           }
#           ]
#       }
#     }
#     ]
# }
# ```

