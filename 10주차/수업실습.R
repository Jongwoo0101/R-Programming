library(dplyr)
test1 <- data.frame(id = c(1,2,3,4,5), midterm = c(60, 80, 70, 90, 85))
test2 <- data.frame(id = c(1,2,3,4,5), final = c(70, 83, 65, 95, 80))

total <- left_join(test1, test2, by="id")
total

student <- data.frame(id = c(1, 2, 3, 4, 5),
                      name = c("Kim", "Lee", "Park", "Hong", "Choi"))
result <- left_join(total, student, by = "id")
result

jum <- result %>% mutate(sum_result = midterm + final,
                         mean_result = sum_result / 2)
jum

group1 <- data.frame(id = c(1, 2, 3), jum = c(60, 80, 70))
group2 <- data.frame(id = c(4, 5, 6), jum = c(70, 83, 65))

test <- bind_rows(group1, group2)
test

job.type <- 'A'
if (job.type == 'B') {
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

a <- 10
if (a < 5) {
  print(a)
} else {
  print(a * 10)
  print(a / 10)
}

score <- 85

if (score >= 90) {
  grade <- 'A'
} else if (score >= 80) {
  grade <- 'B'
} else if (score >= 70) {
  grade <- 'C'
} else if (score >= 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}
print(grade)





