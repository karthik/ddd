library(ggplot2)

# There are two Axis:
#   X axis: <- Robustness (brittle - robust)
#   Y axis: <- Difficulty (easy - hard)

library(tibble)

data <- tibble(Robust = c(5,95,100),
                  Difficult = c(5,5,100),
                  label = c("Most studies",
                            "Sensor",
                            "50 hectare"))

data

library(ggrepel)

robust_diff_plot <-
ggplot(data,
       aes(x = Robust,
           y = Difficult,
           label = label)) +
  geom_point() +
  geom_label_repel(
    segment.size = 0.2,
    direction = "y",
    segment.color = "grey50") +
  theme_minimal()

ggsave(filename = "../ddd/figures/fig-robust-diff.png",
       plot = robust_diff_plot,
       device = "png")
