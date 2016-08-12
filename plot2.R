png("plot2.png",height=480,width=480)
qw=read.csv2("qw.txt",stringsAsFactors = F)
qz <- qw[qw$Date %in% c("1/2/2007","2/2/2007") ,
z$Global_active_power=as.numeric(z$Global_active_power)
we=strptime(paste(z$Date, z$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(we,z$Global_active_power,ylab = "Global Active Power(kilowatts)",type="l")
dev.off()