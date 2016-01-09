if (!exists("l")) {
	source("load_data.R")
}

datetime <- strptime(paste(as.Date(l$Date, format = "%d/%m/%y%y"), l$Time), format = "%y%y-%m-%d %H:%M:%S")

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

plot(datetime, l$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(datetime, l$Global_active_power)


plot(datetime, l$Voltage, ylab="Voltage", type="n")
lines(datetime, l$Voltage)


plot(datetime, l$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n", )
lines(datetime, l$Sub_metering_1, col="black")
lines(datetime, l$Sub_metering_2, col="red")
lines(datetime, l$Sub_metering_3, col="blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=1)

plot(datetime, l$Global_reactive_power, ylab="Global_reactive_power", type="n")
lines(datetime, l$Global_reactive_power)

dev.off()