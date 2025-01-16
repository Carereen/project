# install packages
install.packages("caret")
install.packages("tidyverse")
install.packages("dplyr")

library(caret)
library(tidyverse)
library(dplyr)

# read supermarket_chrundata.csv file 
supermarket <- read.csv("supermarket_churnData.csv")

# drop null
supermarket <- na.omit(supermarket)

# check null # true meaning not null
mean(complete.cases(supermarket)) == 1 # true

# see column and example data 
glimpse(supermarket)

# select only male gender to train and test model
male <- supermarket[supermarket$gender == "Male", ]

# split data are train data 70% and test data 30% 
set.seed(42)
n <- nrow(male)
id <- sample(n, size=0.7*n)
train_data <- male[id, ]
test_data <- male[-id, ]

# train ratings model by branch, number_of_products, product_category, age, total_amount, tax_amount column 
ctrl <- trainControl(method = "cv",
                     number = 5)

model <- train(ratings ~ branch + number_of_products + product_category + age + total_amount + tax_amount,
                     data = train_data,
                     method = "knn",
                     metric = "RMSE",
                     trcontrol = ctrl)

# test model 
p_test <- predict(model, newdata=test_data)

error <- test_data$ratings - p_test
rmse <- sqrt(mean(error**2))
