#Vector Creation
apple<-c('red','green',"yellow")
print(apple)
#Matrix Creation
M=matrix(c('a','a','a','a','b','c'),nrow=2,ncol=3,byrow=TRUE)
print(M)
#Array Creation
a<- array(c('green','yellow'),dim=c(3,3,2))
print(a)
#variable assignment
var.1=c(0,1,2,3)
c(TRUE,1)->var.2
print(var.1)
cat("var.1 is",var.1,"\n")
cat("var.2 is",var.2,"\n")
var.3<-"hi"
cat("The class of var.3 is",class(var.3),"\n")
#operations on vectors
v<-c(1,2,3,4)
b<-c(5,6,7,4)
print(v+b)
print(v-b)
print(v*b)
print(v/b)
print(v%%b)
print(v%/%b)
print(v^b)
print(v>b)
print(v==b)
print(v<=b)
print(v&b)
print(v&&b)

#if else
x<-c("what","is","truth")
if("truth" %in% x)
{
  print("truth is found")
}else
{
  print("Truth is not found")
}

#looping
v<-c("Hello", "there")
cnt<-1
while(cnt<7)
{
  print(cnt)
  print(v)
  cnt=cnt+1
}
cnt<-1
repeat
{
  print(v)
  cnt<-cnt+1
  if(cnt>5)
  {
    break
  }
}
for(i in 1:7){
  b<-i^2
  print(b)
}

#data frame
BMI<- data.frame(gender=c("Male","female","male"),
                 height=c(152,1557,165),
                 weight=c(76,57,60),
                 age=c(40,38,23))
print(BMI)
