Data<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")
Data_sub<-Data[(Data$Date=="1/2/2007" | Data$Date=="2/2/2007" ),]
Data_sub$DateTime<-strptime(paste(Data_sub$Date,Data_sub$Time),"%d/%m/%Y %H:%M:%S")
leg <- c("Submetering_1", "Submetering_2", "Submetering_3")
plot(Data_sub$DateTime, Data_sub$Sub_metering_1, "l", xlab = "", ylab = "Energy sub metering")
lines(Data_sub$DateTime, Data_sub$Sub_metering_2, "l", col = "red")
lines(Data_sub$DateTime, Data_sub$Sub_metering_3, "l", col = "blue")
legend( x= "topright", pch=c("--", "--", "--"),col = c("black", "red", "blue"), 
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


