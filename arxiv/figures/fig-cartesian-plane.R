library(ggplot2)

# There are two Axis:
#
#   X axis: <- Easy --- time consuming ->
#   Y axis: <- fragile --- robust ->

xy_data <- data.frame(x_line = -1:1,
                      y_line = -1:1)

xy_data
#>   x_line y_line
#> 1     -1     -1
#> 2      0      0
#> 3      1      1

ggplot(xy_data) +
  geom_hline(yintercept = 0) +
  geom_vline(xintercept = 0) +
  coord_cartesian(xlim = c(-1.2,1.2),
                  ylim = c(-1.2,1.2)) +
  annotate("text",
           x = -0.1,
           y = -1,
           label = "Easy") +
  annotate("text",
           x = -0.4,
           y = 1,
           label = "Time Consuming") +
  annotate("text",
           x = -1,
           y = 0.1,
           label = "Fragile") +
  annotate("text",
           x = 1,
           y = 0.1,
           label = "Robust") +
  theme_minimal() +
  theme(aspect.ratio = 1)
