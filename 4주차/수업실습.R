a <- 10

A <- "APPLE"

a.1 <- 13

a_1 <- 15

var1 <- c(1:5)
var1

var2 <- seq(1,5)
var2

x <- c(1, 2, 3) # 수치형 벡터
y <- c("a", "b", "c") # 문자형 벡터
z <- c(TRUE, TRUE, FALSE, FALSE) #논리형 벡터

var1 <- seq(1, 5)

5 + var1
5 - var1
5 * var1
5 / var1

str5 <- c("Hello!", "world", "is", "good!")
paste(str5)
paste(str5, collapse = ",")
paste(str5, collapse = " ")

x <- seq(from=1, to=27, by=2)
mean.x <- mean(x)
x - mean.x

install.packages("ggplot2")
library(ggplot2)
x <- c("a", "a", "b", "c")
x
qplot(x)

qplot(data = mpg, x = hwy)


English <- c(80, 75, 65, 70)
Math <- c(70, 65, 80, 90)

English_mean <- mean(English)
English_mean
Math_mean <- mean(Math)
Math_mean

first <- 'Hello world!'
first
second <- "This is my first R class"
paste(first, second)

install.packages("MASS")
library(MASS)

s1 <- seq(from=1, to=49, by=3)
3 * s1
s1 <- 3 * s1

