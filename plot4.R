png("plot4.png",height=480,width=480)
qw=read.csv2("qw.txt",stringsAsFactors = F)
qz <- qw[qw$Date %in% c("1/2/2007","2/2/2007") ,
we=strptime(paste(z$Date, z$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
z$Sub_metering_1=as.numeric(z$Sub_metering_1)
z$Sub_metering_2=as.numeric(z$Sub_metering_2)
z$Sub_metering_3=as.numeric(z$Sub_metering_3)
par(mfrow=c(2,2))
plot(we,z$Global_active_power,ylab = "Global Active Power(kilowatts)",type="l")

plot(we,z$Voltage,ylab = "voltage",type="l",xlab="DateTime")

plot(we,z$Sub_metering_1,ylab="Energy submetering")
lines(we,z$Sub_metering_2,col="red")
lines(we,z$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(we, z$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()