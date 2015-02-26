
#Thai Thien
#APCS 13CTT

input_file<-file("input/winlog0.csv")
input_name<-c("0")

#################

data<-read.csv(input_file)

total<-c(nrow(data),nrow(data),nrow(data),nrow(data),nrow(data),nrow(data))
win<- colSums(data)  #sum win case
percent<-win/total*100
  
tmp<-rbind(total,win,percent)  
tmp<-as.data.frame(tmp)
rowname<-c("total","win","percent")
output.winrate<-cbind(rowname,tmp)


names(output.winrate)<-c(" ","Player 0","Player 1","Player 2","Player 3","Player 4","Player 5")

name.winrate<-paste("output/winrate",input_name,sep="")
name.winrate<-paste(name.winrate,"csv",sep=".")

write.table(output.winrate,file=name.winrate,sep=",",row.names=FALSE)
