install.packages('dplyr')
library(dplyr)

df_raw <- data.frame(var1 = c(1, 2, 1),
                     var2 = c(2, 3, 2))
df_raw

df_new <- df_raw

df_new <- rename(df_new, v2=var2)
df_new

df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))

df

df$var1_sum <- df$var1 + df$var2
df

df$var_mean <- (df$var1 + df$var2) / 2
df

library(ggplot2)
mpg$total <- (mpg$cty + mpg$hwy) / 2
head(mpg)

mean(mpg$total)
summary(mpg$total)
hist(mpg$total)

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
table(mpg$test)
qplot(mpg$test)


mpg$grade <- ifelse(mpg$total >= 30, "A",
                    ifelse(mpg$total >= 20, "B", "C"))

table(mpg$grade)
qplot(mpg$grade)


