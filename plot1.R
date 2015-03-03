Data<-read.table("household_power_consumption.txt",header=TRUE,na.strings="?",sep=";")
Data_sub<-Data[(Data$Date=="1/2/2007" | Data$Date=="2/2/2007" ),]
Data_sub$DateTime<-strptime(paste(Data_sub$Date,Data_sub$Time),"%d/%m/%Y %H:%M:%S")
hist(Data_sub$Global_active_power, main = "Golbal Active Power", xlab = "Global Active Power (kilowatts)", col ="red")


