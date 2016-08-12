png("plot1.png",height=480,width=480)
qw=read.csv2("qw.txt",stringsAsFactors = F)
qz <- qw[qw$Date %in% c("1/2/2007","2/2/2007") ,
z$Global_active_power=as.numeric(z$Global_active_power)
hist(z$Global_active_power,col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()