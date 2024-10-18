exam <- read.csv("csv_exam.csv")
exam
head(exam, 10)

tail(exam, 3)

View(exam)

dim(exam)

str(exam)

summary(exam)

install.packages("ggplot2")
library(ggplot2)
mpg <- as.data.frame(mpg)
head(mpg)
tail(mpg)
dim(mpg)
str(mpg)

summary(mpg)
