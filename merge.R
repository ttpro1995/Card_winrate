#merge
source('function_win_rate.R')
data0<-read.csv("input/winlog0.csv")
data1<-read.csv("input/winlog1.csv")
data2<-read.csv("input/winlog2.csv")
data3<-read.csv("input/winlog3.csv")
data4<-read.csv("input/winlog4.csv")
data5<-read.csv("input/winlog5.csv")
data6<-read.csv("input/winlog6.csv")
data7<-read.csv("input/winlog7.csv")
data8<-read.csv("input/winlog8.csv")
data9<-read.csv("input/winlog9.csv")

merge_winrate<-rbind(data0,data1,data2,data3,data4,data5,data6,data7,data8,data9)

write.table(merge_winrate,file="input/mergewinlog.csv",sep=",",row.names=FALSE)
win_rate("input/mergewinlog.csv","merge")