data<-read.table("household_power_consumption.txt",header=T, sep=";",stringsAsFactors = FALSE, na.strings = "NA")
datas <- subset(data, data$Date %in% c("1/2/2007", "2/2/2007"))
x <- strptime(paste(datas$Date, datas$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png",width = 480, height = 480)

plot(x,as.numeric(datas$Sub_metering_1), type= "l",ylab = "Energy sub metering",xlab="",col="black")
lines(x,as.numeric(datas$Sub_metering_2),col="red")
lines(x,as.numeric(datas$Sub_metering_3),col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),lwd=c(0.5,0.5,0.5),col = c("black","red","blue"))
dev.off()
