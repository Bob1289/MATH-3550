setwd("/Users/bob/Documents/Benny-Programs/Fall-2023/MATH-3550/R")

#Task 1
df <- read.csv("Advertising.csv", header = TRUE) #reads the csv file and stores the data into the data frame 'df'.
df

#Task 2
df$X <- NULL #removes column X
advertising_new <- na.omit(df) #omits data with missing values (na)
advertising_new <- advertising_new[!advertising_new$TV == "", ] #goes through the 'advertising_new' data frame to remove rows where the 'TV' column is an empty string.
advertising_new <- advertising_new[!advertising_new$radio == "", ] #removes rows where the 'radio' column is an empty string.
advertising_new <- advertising_new[!advertising_new$newspaper == "", ] #removes rows where the 'newspaper' column is an empty string.
advertising_new <- advertising_new[!advertising_new$sales == "", ] #removes rows where the 'sales' column is an empty string.
advertising_new
nrow(advertising_new) #displays the number of observations in the cleaned dataset.

#Task 3
summary(advertising_new) #generates the summary statistics for the 'advertising_new'.
par(mfrow = c(2, 2))

for (i in 1:ncol(advertising_new)) {
  hist(advertising_new[1:10, i], main = paste0("Histogram of ", names(advertising_new)[i]), xlab = names(advertising_new)[i])
} # Creates a histogram for each variable for the first 10 observations.

par(mfrow = c(1, 1))

#Task 4
library(caret)

set.seed(0)

train_indices <- createDataPartition(y = advertising_new$sales, p = 0.8, list = FALSE)

training_data <- advertising_new[train_indices, ]
testing_data <- advertising_new[-train_indices, ]
#creates an 80/20 split using the createDataPartition function

#Task 5 Which is best 3?

model1 <- lm(sales ~ TV + radio + newspaper, data = training_data)
summary(model1)

model2 <- lm(sales ~ TV + radio + TV:radio, data = training_data)
summary(model2)

model3 <- lm(sales ~ TV + radio + TV:radio + I(TV^2), data = training_data)
summary(model3)

#fits three linear regression models to the training data set

#Task 6 Model 3 best?
model_1_pred <- predict(model1, newdata = testing_data)
model_2_pred <- predict(model2, newdata = testing_data)
model_3_pred <- predict(model3, newdata = testing_data)
model_1_pred
model_2_pred
model_3_pred

RMSE(testing_data$sales, model_1_pred)
RMSE(testing_data$sales, model_2_pred)
RMSE(testing_data$sales, model_3_pred)

#calculates and displays the predictions for the 'sales' variable in the testing dataset using three different linear regression models and then calculates and displays the Root Mean Squared Error (RMSE) for each model's predictions.
