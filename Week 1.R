# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/7

x <- c(2,4,6,8)
#the assignment operator <- assigns value to a named object
#object names are case sensitive (e.g. x and X)
#the command 'c' means to 'combine'

#data types
#we've just seen how to create a vector: the c() function concatanetes individual items into a vektor
xNum <- c(1,3.1425926,5,7) #int and float，自动转化为float
xLog <- c(TRUE,FALSE,TRUE,FALSE) #bool
xChar <- c("foo","bar","boo","far") #string
xMix <- c(1,TRUE,3,"helloworld")
#a vector can hold only single one type of value.
#values are coerced into the most general type (最general的type啥时候是字符串了，难道不是因为只能转化为字符串？）.

#more about vectors
#c() can be used to add vectors just as it adds single values
x2 <- c(x,x)

#indexing and forcing coercion
xMix[1] #和python不同，R语言是从1开始计数的
as.numeric(xMix[1]) #将数据类型转化为数字
as.character(xNum[2])

length(x) #how many observations
str(x) #the structure of the dataset

#sequences and indexing
#basic one-by-one interger sequences are constructed with the ":"
xSeq <- 1:10
xSeq
#indexing
xNum[2:4] #vector中第二到第四个数
xNum[c(1,3)] #the first and the third obeservation in the vector
#negative indexing
xSeq[-5:-7] #remove the fifth and the seventh observation

