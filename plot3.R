dataSet <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors = FALSE,dec=".")
subSetData <- dataSet[dataSet$Date =="1/2/2007"| dataSet$Date =="2/2/2007",]

#plot3
png(filename="plot3.png")
plot(datetime,subSetData$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering")
points(datetime,subSetData$Sub_metering_2,type="l", col="red")
points(datetime,subSetData$Sub_metering_3,type="l", col="blue")
legend("topright",pch=c("-","-","-"),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()