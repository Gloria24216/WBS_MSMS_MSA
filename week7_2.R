# Title     : week7_2
# Objective : excercise 7.2：predicting cancel
# Created by: gloria
# Created on: 2020/11/22

rm(list = ls())
cancel <- read.csv("/Users/gloria/Downloads/MSA/week7/Cancer.csv")
#str(cancel)
cancel$diagnosis <- factor(cancel$diagnosis)
nmlz <-function (x){
  return(x-mean(x)/sd(x))
}
cancel_n <- as.data.frame(lapply(cancel[,-1],nmlz))
cancel.train <- cancel_n[1:500,]
cancel.test <- cancel_n[501:569,]
cancel.train.label <- cancel[1:500,1]
cancel.test.label <- cancel[501:569,1]
library("class")
mod <- knn(train = cancel.train,test = cancel.test, k=3 , cl=cancel.train.label)
mod

ev <- mod==cancel.test.label
ev <- as.integer(ev)
ot <- sum(ev)/69

