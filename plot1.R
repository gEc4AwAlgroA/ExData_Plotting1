alldata<-read.csv("household_power_consumption.txt", sep=";", colClasses = "character")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
hist(as.numeric(data$Global_active_power), col="red", xlab="Global Active Power (kW)", main="Global Active Power")
dev.copy(png, "plot1.png")
dev.off()