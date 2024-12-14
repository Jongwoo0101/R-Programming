air <- airquality

library(dplyr)

air <- air %>% filter(Ozone != 0 & Solar.R != 0)
air
air <- air %>% select(Solar.R, Wind, Temp)
air
air <- air %>% arrange(Temp)

air$Ozone <- ifelse(air$Temp >= 70 & air$Wind <= 8.9, "Yes", "No")
air
new_data <- data.frame(
  Solar.R = c(50, 60, 74),
  Wind = c(13.2, 15.8, 16.2),
  Temp = c(56, 55, 54),
  Ozone = c("yes", "no", "yes")
)
air <- bind_rows(air, new_data)
air

iris <- iris
iris_summary <- iris %>%
  group_by(Species) %>%
  summarise(
    Sum_Sepal.L = sum(Sepal.Length),
    Mean_Sepal.L = mean(Sepal.Length),
    Median_Sepal.L = median(Sepal.Length)
  )
iris_summary
