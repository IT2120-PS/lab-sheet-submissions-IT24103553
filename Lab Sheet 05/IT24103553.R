setwd("C:\\Users\\IT24103553\\Desktop\\IT42103553")
getwd()
delivery_times <- read.csv("Exercise - Lab 05.txt", header = TRUE,sep=",")
head(delivery_times)


colnames(delivery_times)

hist(Delivery_Times$Delivery_Time_.minutes,main = "Histogram for Deliver Times",breaks = seq(20,70,length =10),right=FALSE,xlab = "Delivery Times")

freq_table<-table(cut(Delivery_Times$Delivery_Time_.minutes.,
                  breaks=seq(20,70,by=5),right=FALSE))


freq_table


cum_freq<-cumsum(freq_table)


mindpoints<-seq(20,65,by=5)+2.5


plot(mindpoints,cum_freq,type="o",col="red",lwd=2,
     xlab="Delivery Time minutes",
     ylab="Cumulative Frequency",
     main="Cumulative Frequency Polygon (ogive)")
grid()
