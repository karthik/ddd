library(gt)
incentive_table <- tibble(
  Mechanism = c("Policy", "Incentives", "Communities", "UI/UX", "Infrastructure"),
  Incentive = c("Required", "Rewarding", "Normative", "Easy", "Possible"),
  Data = c(100, 0, 0, 0, 100),
  Code = c(0, rep(100, 4)),
  `Computational Environment` = c(0, 0, 0, 50, 100)
)

incentive_table %>%
  gt() %>%
  data_color(
    columns = vars(Data, Code, `Computational Environment`),
    colors = scales::col_numeric(
      # Using a function from paletteer to generate a vector of colors
      # Note that you need to wrap paletteer_d outputs in as.character()
      palette = colorspace::sequential_hcl(n = 3, palette = "Greens2", rev = TRUE),
      # Domain is from scales::col_numeric
      # Domain = The possible values that can be mapped
      # We don't HAVE to set a range for this since
      # we're using it inside data_color()
      domain = NULL
    )
  ) %>%
  gtsave("figures/gt-incentive-table.png")

# knitr::include_graphics("figures/gt-incentive-table.png")
