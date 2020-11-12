# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/24

cust.df <- read.csv("http://goo.gl/PmPkaG",header = TRUE)
cust.df$cust.id <- factor(cust.df$cust.id) #change customer id to factor
#visualization
#basic boxplot
boxplot(cust.df$age, xlab = "age", main="boxplot for age of customers", horizontal = TRUE)

#histgrams
hist(cust.df$age, xlab = "age", ylab = "quantity", main = "boxplot for age of customers",
     breaks = 10, #more columns
     col = "lightblue", #color of the bar
     freq = FALSE) #false will show the percentage rather than quantities

#basic scatter plot --- look at two variables at the same time
plot(x=cust.df$age,y=cust.df$credit.score,
     col = "blue", #color
     xlim= c(15,55), ylim = c(500,900),
     main = "active customers as of june 2014",
     xlab = "customer age", ylab = "credit score")

#look at more variables at one time
pairs(formula = ~ age+credit.score+distance.to.store+online.spend+store.trans+store.spend,
      data = cust.df)
#从画图的角度，R确实挺简单

#correlation
cor(cust.df$age,cust.df$credit.score)
cor.test(cust.df$age,cust.df$credit.score) #p value, df...

#correlation matrix
cor(cust.df[, c(2,3,5:12)])
cor(cust.df[, c(2,3,5:12)], use = "complete.obs") #ignore missing values

# package corrplot 差不多相当于seaborn？
library(corrplot) #plots for correlation
co <- function (var) {
  corrplot::corrplot(corr = cor(var, use = "complete.obs"),
                      method = "square")
}
co(cust.df[,c(2,3,5:12)])
