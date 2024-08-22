# Script to generate some random data
# by Jakob Assmann j.assmann@bios.au.dk 19 Feb 2020

### Generate a random dataset to fit a linear model ----

# Set seed to obtain reproducible pseudo-random numbers.
set.seed(5) 

# Generate base data based on a linear equation
x <- 1:100
a <- runif(1,0,10)
b <- runif(1,0,100)
y <- a*x + b 

# Add some noise
sigma <- 10 * a
y <- y + rnorm(length(y), 0, sigma)

# Generate dataframe
my_data <- data.frame(x = x, y = y)

# Save data
write.csv(my_data,file = "data/my_data.csv", row.names = F)

### End of file