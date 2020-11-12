# Title     : Week4_1
# Objective : desicion tree
# Created by: gloria
# Created on: 2020/11/1
loan <- read.csv("/Users/gloria/Downloads/MSA/week4/Loan.csv")
loan <- as.data.frame(loan) #this can solve some errors that you usually get
loan$default <- factor(loan$default)
loan$credit_history <- factor(loan$credit_history)
library("C50")
def.t <- C50::C5.0(loan[,-1],loan[,1])
plot(def.t)
summary(def.t)
