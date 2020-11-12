# Title     : TODO
# Objective : TODO
# Created by: gloria
# Created on: 2020/10/18

store.num <- factor(c(3,14,21,32,54))  #store id
store.rev <- c(543,654,345,678,234)  #total revenue
store.visits <- c(45,78,32,56,34)  #visits
store.manager <- c("annie","Bert","Carla","Dave","Ella")

#save to one dataframe
store.df <- data.frame(store.num,store.rev,store.visits,store.manager, stringsAsFactors = F)
store.df

#save to an .csv format in my computer
write.csv(store.df,"/Users/gloria/Documents/store_df.csv",row.names = F)
