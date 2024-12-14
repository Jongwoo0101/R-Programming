iris <- iris
summary(iris)
library(ggplot2)
library(dplyr)

iris <- rename(iris, type=Species)
iris

iris$total <- (iris$Sepal.Length + iris$Sepal.Width + iris$Petal.Length + iris$Petal.Width) / 4
iris

iris$size <- ifelse(iris$total > 3.8, "large", "small")
iris
qplot(iris$size)
