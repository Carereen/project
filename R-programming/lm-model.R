install.packages("tidyverse")
install.packages("caret")

library(tidyverse)
library(caret)

# import data
read.csv("cars.csv")

# remove null 
cars <- na.omit(cars)

glimpse(cars)

# select merceds-benz car and transmission is manual
cars_2017 <- cars[(cars$transmission == "manual" & cars$make == "Mercedes-Benz"),  ]

# split data
set.seed(42)
n <- nrow(cars)
id <- sample(n, size=0.8*n)
train_data <- cars[id, ]
test_data <- cars[-id, ]

# train a linear regression model  
ctrl <- trainControl(method = "cv",
                     number = 5)

model <- train(engine_size ~ year + model + engine_vol + feul_type,
                     data = train_data,
                     method = "knn",
                     metric = "RMSE",
                     trcontrol = ctrl)

# predict a linear regression model
p_test <- predict(model, newdata=test_data)

# evaluate
error <- test_data$car_price - p_test
rmse <- sqrt(mean(error**2))
