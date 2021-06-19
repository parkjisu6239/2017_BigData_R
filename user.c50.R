user <- read.csv("user.csv", stringsAsFactors = FALSE)

str(user)

set.seed(123)

train_sample <-sample(258,198)
str(train_sample)

user_train <- user[train_sample,-6]
user_test <- user[-train_sample, ]

user_train_label<- user[train_sample, 6]
user_train_label<- as.factor(user_train_label)

#install.packages("C50")
library(C50)

user_model <- C5.0(user_train,user_train_label)

summary(user_model)

user_pred<-predict(user_model,user_test)


CrossTable(user_test$UNS,user_pred,prop.chisq=FALSE,prop.c = FALSE,prop.r = FALSE,dnn= c('actual default','predicted default'))

# 93%