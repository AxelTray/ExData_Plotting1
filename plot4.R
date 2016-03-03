dataSet <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors = FALSE,dec=".")
subSetData <- dataSet[dataSet$Date =="1/2/2007"| dataSet$Date =="2/2/2007",]

#plot4
png(filename="plot4.png")
par(mfrow=c(2,2))
plot(datetime,subSetData$Global_active_power,type="l", xlab="", ylab="Global Active Power")
plot(datetime,subSetData$Voltage,type="l", xlab="datetime", ylab="Voltage")
plot(datetime,subSetData$Sub_metering_1,type="l", xlab="", ylab="Energy sub metering")
points(datetime,subSetData$Sub_metering_2,type="l", col="red")
points(datetime,subSetData$Sub_metering_3,type="l", col="blue")
legend("topright",pch=c("-","-","-"),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime,subSetData$Global_reactive_power,type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()