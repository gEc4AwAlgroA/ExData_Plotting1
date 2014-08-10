alldata<-read.csv("household_power_consumption.txt", sep=";")
data<-alldata[alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007",]
plot(as.numeric(data$Global_active_power)/1000, type="l", ylab="Global Active Power (kW)")
dev.copy(png, "plot2.png")
dev.off()