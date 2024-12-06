library(ggplot2)
ggplot(data = mpg, aes(x = drv, y = hwy)) + geom_boxplot()

f <- function(x1, x2) {
  y <- x1 ^ 2 + x2 ^ 2
  return (y)
}
f(x1 = 1, x2 = 2)

f_mean <- function(x1, x2, x3) {
  y = (x1 + x2 + x3) / 3
  return (y)
}

f_mean(1, 2, 3)

pow1 <- function(x1, x2 = 3) {
  res <- x1 ^ x2
  return (res)
}

a <- pow1(2)
a

pow2 <- function(x1 , x2 = 3) {
  x1 ^ x2
}
a <- pow2(2)
a







