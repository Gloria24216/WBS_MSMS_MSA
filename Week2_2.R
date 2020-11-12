# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/18
library(car)
data(Salaries)

a <- subset(Salaries, yrs.service>40)
b <- subset(Salaries, salary>150000)
c <- subset(Salaries, yrs.service>20)
summary(c)