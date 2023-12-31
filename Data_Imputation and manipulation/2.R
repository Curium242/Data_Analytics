install.packages("plyr")
install.packages("dplyr")
install.packages("missForest")
install.packages("mice")
install.packages("VIM")
library(plyr)
library(dplyr)
#Data cleaning and missing data analysis
#cleans the "Score.Not.Clean" dataset by replacing specific values with NA to handle missing or incorrect data,
#Performs missing data analysis using the "missForest" and "VIM" libraries to identify and visualize missing data patterns.
is.na(Score.Not.Clean)
names(Score.Not.Clean)
Score.Not.Clean<- Score.Not.Clean %>%mutate(Final = replace(Final, Final==""|Final=="na"|Final=="n/A",NA))
Score.Not.Clean<- Score.Not.Clean %>%mutate(Student=replace(Student,Student=="",NA))%>%
  mutate(Test1=replace(Test1, Test1=="n/a"|Test1=="NaN"|Test1=="",NA))
Score.Not.Clean<- Score.Not.Clean %>%mutate(Student=replace(Student,Student=="",NA))%>%
  mutate(Test2=replace(Test1, Test2=="n/a"|Test2=="NaN"|Test2=="",NA))
library(missForest)
library(mice)
df_missing <- prodNA(Score, noNA = 0.5)
md.pattern(df_missing)
library(VIM)
aggr(df_missing, col=c('green','yellow'), numbers=TRUE, sortVars=TRUE, labels=names(df_missing), cex.axis=.7, gap=3, ylab=c("Missing data","Pattern"))

#Data manipulation and Analysis
#Creates a subset of the "Credit" dataset by randomly selecting six rows.
#Generates various data subsets, transformations, and summary statistics, such as mean values, to analyze the data's characteristics and relationships.
data <- Credit
data <-sample_n(data,6)
df1 <- select(data,c(Cdur,Camt))
df2 <- select(data,Cdur,Camt:age)
df3 <- select(data,-c(Camt,Cpur))
df4 <- select(data, starts_with("r"))
df5 <- select(data, -ends_with("s"))
df6 <- select(data, Cpur, everything())
#df7 <- rename(data,Prop=props)
df8 <- transform(data, new=(data$Cdur/data$age))
df9 <- arrange(data, desc(creditScore), age)
v1 <- tapply(data$age,data$Camt,mean)
v2 <- apply(data[,3:6],2,mean)
print(df1)
print(df2)
print(df3)
print(df4)
print(df5)
print(df6)
#print(df7)
print(df8)
print(df9)
print(v1)
print(v2)
