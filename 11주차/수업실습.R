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




