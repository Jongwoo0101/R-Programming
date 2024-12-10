df <- data.frame(gender = c("M", "F", NA, "M", "F")
                 , score = c(5, 4, 3, 4, NA))
df

is.na(df)
table(is.na(df))
table(is.na(df$gender))
table(is.na(df$score))
mean(df$score)

library(dplyr)
df %>% filter(is.na(score))
df %>% filter(!is.na(score))
df_nomiss <- df %>% filter(!is.na(score))
mean(df_nomiss$score)

df_nomiss <- df %>% filter(!is.na(gender) & !is.na(score))
df_nomiss

df_nomiss2 <- na.omit(df)
df_nomiss2

mean(df$score, na.rm = TRUE)

df %>% summarise(sum_score = sum(score, na.rm = TRUE),
                 mean_score = mean(score, na.rm = TRUE),
                 median_score = median(score, na.rm = TRUE))

exam <- read.csv("csv_exam.csv")
exam[c(3, 8, 12), "science"] <- NA

mean(exam$science, na.rm = TRUE)

pred.science <- mean(exam$science, na.rm = TRUE)
exam$science <- ifelse(is.na(exam$science), pred.science, exam$science)

out <- data.frame(gender = c(1, 0, 5, 1, 0)
                  , score = c(5, 4, 3, 4, 5))

out
out <- ifelse(out$gender == 5, NA, out$gender)
out

out %>%
  filter(!is.na(gender) & !is.na(score)) %>%
  group_by(gender) %>%
  summarise(mean_score = mean(score))

library(ggplot2)
boxplot(mpg$hwy)
box.value <- boxplot(mpg$hwy)$stats
box.value
mpg$hwy <- ifelse(mpg$hwy < box.value[1] | mpg$hwy > box.value[5],
                  NA, mpg$hwy)
table(is.na(mpg$hwy))
mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = TRUE))


