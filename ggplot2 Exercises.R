sessionInfo()
install.packages('tidyverse')
library(readr)
dat <- read_csv("EconomistData.csv")

#1. Create a scatter plot with CPI on the x axis and HDI on the y axis.
library(ggplot2)
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point()

#2. Color the points blue.
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point(color = "blue")

#3. Map the color of the the points to Region.
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point(aes(color = Region))

#4. Make the points bigger by setting size to 2
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point(aes(color = Region), size = 2)

#5. Map the size of the points to HDI.Rank
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point(aes(color = Region, size =  HDI.Rank))


# Exercise 2
#1. Re-create a scatter plot with CPI on the x axis and HDI on the y axis (as you did in the previous exercise).
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point()

#2. Overlay a smoothing line on top of the scatter plot using geom_smooth
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point() +
  geom_smooth()

#3. Overlay a smoothing line on top of the scatter plot using geom_smooth, but use a linear model for the predictions. Hint: see ?stat_smooth
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point() +
  geom_smooth(method = "lm")

#4. Overlay a smoothing line on top of the scatter plot using geom_line. Hint: change the statistical transformation.
ggplot(dat, aes(x = CPI, y = HDI)) +
  geom_point() +
  geom_line(stat = "smooth", method = "loess")


#Exercise 3
#1. Create a scatter plot with CPI on the x axis and HDI on the y axis. Color the points to indicate region.
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point()

#2. Modify the x, y, and color scales so that they have more easily-understood names (e.g., spell out “Human development Index” instead of “HDI”).
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
  scale_color_discrete(name = "Region of the world")

#3. Modify the color scale to use specific values of your choosing. Hint: see ?scale_color_manual
ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
  scale_color_manual(name = "Region",
                     values = c("#159435",
                                "#899415",
                                "#28AADC",
                                "#248E84",
                                "#F2583F",
                                "#942c15"))



