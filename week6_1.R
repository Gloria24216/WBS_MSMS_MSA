# Title     : Wee6_1
# Objective : Baiscs of regression tree
# Created by: gloria
# Created on: 2020/11/15

# read data set
sat.data <- read.csv("/Users/gloria/Downloads/MSA/week6/Satisfaction.csv",header = T,stringsAsFactors = T)
#make sure data is stored as data frame
sat.data <- as.data.frame(sat.data)

#regression tree
library("rpart")
library("rpart.plot")
sat.tree <- rpart(satisfaction ~ children+weekend,data = sat.data,control = rpart.control(minsplit = 1,minbucket = 2))
#basic info
sat.tree
summary(sat.tree)
rpart.plot(sat.tree,digits = 2)
