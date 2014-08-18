alldata<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
data$DateTime<-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

png(filename="plot3.png")
plot(data$DateTime, as.numeric(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
points(data$DateTime, as.numeric(data$Sub_metering_2), type="l", col="red")
points(data$DateTime, as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()