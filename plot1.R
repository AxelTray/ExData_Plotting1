dataSet <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors = FALSE,dec=".")
subSetData <- dataSet[dataSet$Date =="1/2/2007"| dataSet$Date =="2/2/2007",]


#plot 1
png(filename="plot1.png")
par(mfrow=c(1,1))
hist(subSetData$Global_active_power,main="Global active power",xlab="Global active power (kilowatts)",col="red")
dev.off()