car <- read.csv("car.csv", stringsAsFactors = FALSE)

str(car)

set.seed(123)

train_sample <-sample(1727,1627)
str(train_sample)

car_train <- car[train_sample,-7]
car_test <- car[-train_sample, ]

car_train_label<- car[train_sample, 7]
car_train_label<- as.factor(car_train_label)

#install.packages("C50")
library(C50)

car_model <- C5.0(car_train,car_train_label)

summary(car_model)

car_pred<-predict(car_model,car_test)


CrossTable(car_test$unacc,car_pred,prop.chisq=FALSE,prop.c = FALSE,prop.r = FALSE,dnn= c('actual default','predicted default'))

