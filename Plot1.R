library(sqldf)
## Read and modify the assignment data
power<-read.table("household_power_consumption.txt",sep = ";",header = T,na.strings = "?")
Subset<-subset(power,Date %in% c("1/2/2007","2/2/2007"))
nrow(Subset)
Power<-read.table("household_power_consumption.txt",sep = ";",header = T,na.strings = "?",
                  skip =66636 ,nrows =2880 )
colnames(Power)<-c("Date","Time","Global_active_power","Global_reactive_power",
                   "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
Power$Date<-as.Date(Power$Date,format = "%d/%m/%Y")
## Making plot1
plot1<-hist(Power$Global_active_power,main ="Global Active Power",col="Red",
            xlab = "Global Active Power (kilowatts)")
## save the file
dev.copy(png,file="Plot1.png",height = 480, width = 480)
dev.off()