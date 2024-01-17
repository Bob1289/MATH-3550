# Create a vector my_vec1 that includes the numbers 1,2,3,5,6,9,10,12

my_vec1 <- c(1,2,3,5,6,9,10,12)

# Create a vector my_vec2 that includes the letters “a”,“b”,“c”,“e”,“f”,“h”,“i”,“k”.

my_vec2 <- c("a","b","c","e","f","h","i","k")

# Using the data.frame() function, create a dataframe my_df that includes my_vec1 and my_vec2

my_df <- data.frame(my_vec1, my_vec2)

# Use a R function to look at the first 6 rows of my_df.

head(my_df, 6)

# Use square brackets to look at the 2nd column, 4th row of my_df

my_df[4,2]

# Use square brackets to look at the whole 6th row of my_df

my_df[6,]

# Use the dollar sign formatting to look at the first column of my_df

my_df$my_vec1

# Delete the second column of my_df.

my_df$my_vec2 <- NULL

# Use a R function to concatenate my_vec1 and my_vec2 with no spaces in between each resulting pair 

paste0(my_vec1, my_vec2)
