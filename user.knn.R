user <- read.csv("user.csv", stringsAsFactors = FALSE)

str(user)

table(user$UNS)

round(prop.table(table(user$UNS)) * 100, digits = 1)

normalize <- function(x) {
 return ((x - min(x)) / (max(x) - min(x)))
}

user_n<-as.data.frame(lapply(user[1:5],normalize))

user_train <- user_n[1:198, ]
user_test <- user_n[199:258, ]


user_train_labels <- user[1:198, 6]
user_test_labels <- user[199:258, 6]

library(class)

user_test_pred <- knn(train = user_train, test = user_test,
                      cl = user_train_labels, k=8)

# 7  is bes 83%
library(gmodels)


CrossTable(x = user_test_labels, y = user_test_pred,
           prop.chisq=FALSE)

