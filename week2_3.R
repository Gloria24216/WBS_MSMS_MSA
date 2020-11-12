# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/21

store.df <- read.csv("/Users/gloria/Downloads/MSA/week2/StoreData.csv",header = TRUE)
a <- table(store.df$p1price) #table for counting, in how many cases product 1 was sold on a certain price
prop.table(a) #the probability of each option
b <- table(store.df$p1price,store.df$p1prom)
prop.table(b) #note that table index [row, column] like most things in R
#u1s1这几个功能确实还行

t1 <- function (variable){
  table(store.df$variable)
}
t2 <- function (v1,v2){
  table(store.df$v1,store.df$v2)
}
t1(p1price)
t2(p1price,p1prom)

by(store.df$p1sales,store.df$storeNum,mean)