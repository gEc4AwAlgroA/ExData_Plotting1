alldata<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
data$DateTime<-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

png(filename="plot4.png")
par(mfrow=c(2,2))
with(data, {
#1
plot(data$DateTime, as.numeric(data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kW)")
#2
plot(data$DateTime, as.numeric(data$Voltage), type="l", xlab="datetime", ylab="Voltage")
#3
plot(data$DateTime, as.numeric(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering")
points(data$DateTime, as.numeric(data$Sub_metering_2), type="l", col="red")
points(data$DateTime, as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#4
plot(data$DateTime, as.numeric(data$Global_reactive_power), type="l", xlab="datetime", ylab="Global Reactive Power (kW)")
})
#png
dev.off()