if (!exists("l")) {
	source("load_data.R")
}
	
datetime <- strptime(paste(as.Date(l$Date, format = "%d/%m/%y%y"), l$Time), format = "%y%y-%m-%d %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480)

plot(datetime, l$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(datetime, l$Global_active_power)

dev.off()