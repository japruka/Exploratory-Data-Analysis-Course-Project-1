par(mfcol=c(2,2))
with(Power,{plot(Power$Global_active_power~Power$datetime,type="l",xlab="",
                 ylab = "Global Active Power (kilowatts)")
        plot(Power$datetime,Power$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering",)
        lines(Power$datetime,Power$Sub_metering_2,col="Red")
        lines(Power$datetime,Power$Sub_metering_3,col="Blue")
        legend("topright",lty = 1,col = c("Black","Red","Blue"),
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot(Power$datetime,Power$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")
        plot(Power$datetime,Power$Global_reactive_power,type = "l",xlab = "datetime",
             ylab = "Global_reactive_power")
        })
dev.copy(png,file="Plot4.png",height = 480, width = 480)
dev.off()