consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
needed <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(as.character(needed$Global_active_power))
date <- needed$Date
time <- needed$Time
datetime <- paste(date, time)
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png", width = 480, height = 480)
plot(datetime, gap, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()