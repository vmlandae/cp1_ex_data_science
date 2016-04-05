data<-read.table("household_power_consumption.txt",header=T, sep=";")
data$Date<-as.Date(data$Date, "%d/%m/%Y")
data <- data[data$Date >= "2007-02-01" & data$Date < "2007-02-03",]


png("plot1.png",width = 480, height = 480)
hist(as.numeric(as.character(data$Global_active_power)),xlab ="Global active power(kilowatts)",main = "Global Active Power", col = 'Red')

dev.off()
