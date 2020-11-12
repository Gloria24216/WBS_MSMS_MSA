# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/24

library(car)
data(Salaries)
str(Salaries)
splt <- function (a,b){
  plot(x=a,y=b,
       col = "blue",
       main = "how many can be earned after phd", xlab = "salary",ylab = "years")
}
splt(Salaries$salary,Salaries$yrs.since.phd)
cor(Salaries$salary,Salaries$yrs.since.phd)
cor.test(Salaries$salary,Salaries$yrs.since.phd)
cor(Salaries[,c(3,4,6)],use = "complete.obs")
library(corrplot)
corrplot::corrplot(corr = cor(Salaries[,c(3,4,6)],use = "complete.obs"),
                   method = "ellipse")