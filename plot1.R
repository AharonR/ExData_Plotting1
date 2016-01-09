if (!exists("l")) {
	source("load_data.R")
}

png(filename = "plot1.png", width = 480, height = 480)
hist(l$Global_active_power,main = "Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()