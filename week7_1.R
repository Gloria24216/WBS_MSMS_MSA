# Title     : week7_1
# Objective : basics of KNN
# Created by: gloria
# Created on: 2020/11/22

rm(list = ls())
fruits <- read.csv("/Users/gloria/Downloads/MSA/week7/Fruit_20171009.csv")
fruits$Foodtype <- factor(fruits$Foodtype)
#str(fruits)
#normalize the variables
nmlz <-function (x){
  return(x-mean(x)/sd(x))
}
fruits_n <- as.data.frame(lapply(fruits[,3:4],nmlz))
#define thetraining and test set
fruit_train <- fruits_n[1:15,]
fruit_test <- fruits_n[16,]
fruits_train_labels <- fruits[1:15, 1]
fruits_test_labels <- fruits[16, 1]

library("class")
pred <- knn(train = fruit_train,test = fruit_test,cl=fruits_train_labels,k=4)
#the decision of how many neighnors to use for knn determines how well the model will generate future data
pred