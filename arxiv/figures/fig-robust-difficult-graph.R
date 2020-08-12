library(ggplot2)

# There are two Axis:
#   X axis: <- Robustness (brittle - robust)
#   Y axis: <- Difficulty (easy - hard)

library(tibble)

dat_prep <- tibble(prep = c(15,20,25,95, 96),
               understanding = c(15,20,95,95,96),
                  label = c("Data Dump",
                            "Most studies",
                            "Sensor",
                            "50 hectare",
                            "RCT"
                            ))

dat_prep

library(ggrepel)

plot_effort_understanding <-
ggplot(dat_prep,
       aes(x = prep,
           y = understanding,
           label = label)) +
  geom_point() +
  geom_label_repel(
    segment.size = 0.2,
    segment.color = "grey50") +
  theme_minimal() +
  labs(x = "Effort to Prepare",
       y = "Ease of Understanding") +
  xlim(0,100) + 
  ylim(0, 100)

ggsave(filename = "../ddd/figures/fig-effort-understanding.png",
       plot = plot_effort_understanding,
       device = "png")
