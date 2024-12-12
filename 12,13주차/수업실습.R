for (i in 1:5) {
  print('*')
}

for (i in 1:5) {
  print(i)
}

sum <- 0
i <- 1
while (i <= 100) {
  sum <- sum + i
  i <- i + 1
}
sum

library(ggplot2)
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()
ggplot(data = mpg, aes(x = displ, y= hwy))+
  geom_point() +
  xlim(3, 6) + 
  ylim(10, 30)

library(dplyr)

df_mpg <- mpg %>%
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy))

df_mpg
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) + geom_col()
ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) + geom_col()
ggplot(data = mpg, aes(x = drv)) + geom_bar()
ggplot(data = mpg, aes(x = hwy)) + geom_bar()


ggplot(data = economics, aes(x=date, y=unemploy)) + geom_line()









