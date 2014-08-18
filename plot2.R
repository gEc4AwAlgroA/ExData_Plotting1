alldata<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
data$DateTime<-strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")

png(filename="plot2.png")
plot(data$DateTime, as.numeric(data$Global_active_power), type="l", xlab="", ylab="Global Active Power (kW)")
dev.off()