install.packages("tidyverse")
install.packages("caret")

library(tidyverse)
library(caret)

# import data
read.csv("cars.csv")

# remove null 
cars <- na.omit(cars)

glimpse(cars)

# split data
set.seed(42)
n <- nrow(cars)
id <- sample(n, size=0.8*n)
train_data <- cars[id, ]
test_data <- cars[-id, ]

# train a linear regression model  
lm_model <- train(car_price ~ miles + engine_vol + engine_size, 
                  data = train_data,
                  method = "lm")

# predict a linear regression model
p_test <- predict(lm_model, newdata=test_data)

# evaluate
error <- test_data$car_price - p_test
rmse <- sqrt(mean(error**2))
