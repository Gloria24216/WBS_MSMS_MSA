# Title     : week4_2
# Objective : desicion tree
# Created by: gloria
# Created on: 2020/11/1

def.data <- read.csv("/Users/gloria/Downloads/MSA/week4/Risky Bank Loans_20171009.csv",header = T,stringsAsFactors = T)
def.data <- as.data.frame(def.data)
#str(def.data)
def.tree <- C50::C5.0(def.data[,-17],def.data[,17])
summary(def.tree)
plot(def.tree)

#prop.table(table(def.data$default))
#set.seed(123)
#def.data <- def.data[order(runif(1000)),]
#def.train <- def.data[1:900,]
#def.test <- def.data[901:1000,]
#library("C50")
#def.tree <- C5.0(def.train[,-17],def.train[,17])
#def.tree
#def.pred <- predict(object = def.tree,newdata = def.test)
#library("gmodels")
#CrossTable(def.test$default,def.pred,dnn = c("Actual","Predict"))