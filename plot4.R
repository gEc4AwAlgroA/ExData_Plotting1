alldata<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
par(mfrow=c(2,2), mar = c(4, 4, 0, 0))
with(data, {
#1
plot(as.numeric(data$Global_active_power), type="l", ylab="Global Active Power (kW)")
#2
plot(as.numeric(data$Voltage), type="l", xlab="datetime", ylab="Voltage")
#3
plot(as.numeric(data$Sub_metering_1), type="l", ylab="Energy sub metering")
points(as.numeric(data$Sub_metering_2), type="l", col="red")
points(as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#4
plot(as.numeric(data$Global_reactive_power), type="l", ylab="Global Reactive Power (kW)")
})
#png
dev.copy(png, "plot4.png")
dev.off()