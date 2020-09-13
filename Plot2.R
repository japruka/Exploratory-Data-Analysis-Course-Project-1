## create datetime parameter
Power$datetime <- strptime(paste(Power$Date, Power$Time), "%Y-%m-%d %H:%M:%S")
## Making Plot2
plot(Power$Global_active_power~Power$datetime,type="l",xlab="",ylab = "Global Active Power (kilowatts)")
## save the file
dev.copy(png,file="Plot2.png",height = 480, width = 480)
dev.off()