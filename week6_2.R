# Title     : week6_2
# Objective : exercise6.2
# Created by: gloria
# Created on: 2020/11/15

rm(list = ls())

reg.tree <- function (dataset,vars){
  library("rpart")
  library("rpart.plot")
  mod <- rpart(vars,data = dataset)
  mod
  summary(mod)
  rpart.plot(mod)
}

wine.data <- read.csv("/Users/gloria/Downloads/MSA/week6/Wine.csv", header = T)
wine.data <- as.data.frame(wine.data)
reg.tree(wine.data,quality~.)