rm(list=ls())

data <- mtcars
library(dplyr)
data <- sample_n(data,20)

 install.packages("ggplot2")
library("ggplot2")     	
ggplot(data,aes(x=wt,y=mpg))+geom_point() #To plot - wt/gear

cor.test(data$wt,data$mpg)   # to find the correlation value

# Simple linear regression
slr = lm(mpg~wt, data)
summary(slr)
plot(slr$resid)  # Residual plot

plot(slr$resid~data$wt[order(data$wt)], main="wt vs Residuals - Simple Linear Regression", xlab="wt", ylab="Residuals")

hist(slr$resid, main="Histogram of Residuals", ylab="Residuals")

qqnorm(slr$resid)   #Q-Q Plot
qqline(slr$resid)

plot(slr,which =2)

# Multiple linear regression
mlr = lm(mpg~wt+gear, data)
summary(mlr)
plot(mlr$resid)  # Residual plot

plot(mlr$resid~data$wt[order(data$wt)], main="wt vs Residuals - Multiple Linear Regression", xlab="wt", ylab="Residuals")

hist(mlr$resid, main="Histogram of Residuals",
     ylab="Residuals")

qqnorm(mlr$resid)   #Q-Q Plot
qqline(mlr$resid)

plot(mlr,which =2)
