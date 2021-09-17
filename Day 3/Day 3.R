Data <- read.csv('C:/Users/trc/Downloads/machine_learning-master/machine_learning-master/DataPreprocessing.csv')
Data
 Data$Income=ifelse(is.na(Data$Income),ave(Data$Income,FUN=function(x)mean(x,na.rm='TRUE')),Data$Income)
Data
Data$Age=ifelse(is.na(Data$Age),ave(Data$Age,FUN=function(x)mean(x,na.rm='TRUE')),Data$Age)
Data
Data$ï..Region = factor(Data$ï..Region, levels = c('Brazil','India','USA'), labels = c(1,2,3))
Data$Online.Shopper = factor(Data$Online.Shopper, levels = c('No','Yes'),  labels = c(0,1))
library(caTools)
set.seed(123)
split = sample.split(Data$Income, SplitRatio = 0.8)
test_set = subset(Data, split == FALSE)
training_set[, 3] = scale(training_set[, 3])
