dataSet <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?",stringsAsFactors = FALSE,dec=".")
subSetData <- dataSet[dataSet$Date =="1/2/2007"| dataSet$Date =="2/2/2007",]

#plot2
png(filename="plot2.png")
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime,subSetData$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()