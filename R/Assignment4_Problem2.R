x <- 1:10
y <- c("M", "F", "F", "M", "F", "M", "M", "M", "F", "M")
z <- c(23, 57, 39, 20, 10, 5, 8, 1, 24, 40)
df <- data.frame(x, y, z)

set.seed(0)
ind <- sample(1:nrow(df), 0.8 * nrow(df))

# Creating the training dataset (train_df)
train_df <- df[ind, ]

# Creating the testing dataset (test_df)
test_df <- df[-ind, ]