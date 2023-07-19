library(plyr)
library(dplyr)
a<- read.csv("Attendance-06-Augustt.csv")
b<-read.csv("Attendance-13-Augustt.csv")
as<-select(a,"Full.Name","Timestamp")
e2<-distinct(as,Full.Name,.keep_all=TRUE)

#colnames(as)[2]="Timestamp.x"
names(as)
bs<-select(b,"Full.Name","Timestamp")
e4<-distinct(bbs,Full.Name,.keep_all=TRUE)
#colnames(bs)[2]="Timestamp.y"
names(bs)
#bind_cols(as, bs)
r<-merge(e2,e4,by="Full.Name")
write.csv(r,"Attendance-Summary.csv")
