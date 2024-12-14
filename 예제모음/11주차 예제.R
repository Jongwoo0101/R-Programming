iris <- iris
iris[c(2, 5), "Sepal.Length"] <- NA
iris[c(1, 5, 10), "Petal.Length"] <- NA

table(is.na(iris))
iris <- iris %>% filter(!is.na(Sepal.Length) & !is.na(Petal.Length))
iris

iris[c(45, 55, 130), "Sepal.Width"] <- c(10, 11, 12) # 비정상적으로 큰 값
iris[c(132, 135, 140), "Petal.Width"] <- c(-1, -2, -3) # 비정상적으로 작은 값

iris$Petal.Width <- ifelse(iris$Petal.Width < 0, NA, iris$Petal.Width)
boxplot(iris$Sepal.Width)
