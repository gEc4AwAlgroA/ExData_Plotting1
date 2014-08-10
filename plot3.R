alldata<-read.csv("household_power_consumption.txt", sep=";")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
plot(as.numeric(data$Sub_metering_1), type="l", ylab="Energy sub metering")
points(as.numeric(data$Sub_metering_2), type="l", col="red")
points(as.numeric(data$Sub_metering_3), type="l", col="blue")
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, "plot3.png")
dev.off()