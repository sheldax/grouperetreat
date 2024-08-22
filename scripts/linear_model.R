# Script to fit a linear model to some random data
# by Jakob Assmann j.assmann@bios.au.dk 19 Feb 2020

### Dependencies ----

# Try loading ggplot, if not avialable install.
if(!require(ggplot2)){
  install.packages("ggplot2")
  library(ggplot2)
}

### Load data ----
my_data = read.csv("data/my_data.csv")

### Fit linear model ----
linear_model <- lm(y ~ x, my_data)
summary(linear_model)

### Plot data ----
ggplot(my_data, aes(x,y)) + 
  geom_point() +
  geom_smooth(method = "lm") +
  theme_classic(base_size = 16)
ggsave("plots/fig1_linear_model.png")
