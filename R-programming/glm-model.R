library(caret)
library(tidyverse)

# import data
car <- read.csv("cars.csv")

# remove null 
cars <- na.omit(car)

# select merceds-benz car and transmission is manual
cars_2017 <- cars[(cars$year == "2017" & cars$make == "Mercedes-Benz"),  ] 

# split data
train_test_split <- function(data) {
  set.seed(42)
  n <- nrow(data)
  id <- sample(n, size=0.7*n)
  train_data <- data[id, ]
  test_data <- data[-id, ]
  return(list(train_data, test_data))
}

cars_2017 <- train_test_split(cars_2017)

# train a linear regression model 
ctrl <- trainControl(method = "cv",
                     number = 5)

glm_model <- train(factor(transmission) ~ engine_size + engine_vol + feul_type,
                   data = train_data,
                   method = "glm",
                   metric = "Accuracy",
                   trControl = ctrl)

## predict a Generalized Linear Model 
p <- predict(glm_model, newdata=test_data)

## confusion matrix
confusionMatrix(p, transmission,
                positive = "automatic",
                mode = "prec_recall")
