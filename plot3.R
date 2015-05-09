consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
needed <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]
date <- needed$Date
time <- needed$Time
datetime <- paste(date, time)
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
m1 <- as.numeric(as.character(needed$Sub_metering_1))
m2 <- as.numeric(as.character(needed$Sub_metering_2))
m3 <- as.numeric(as.character(needed$Sub_metering_3))
png(file = "plot3.png", width = 480, height = 480)
plot(datetime, m1, type = "l", xlab = " ", ylab = "Energy sub metering")
points(datetime, m2, type = "l", col = "red")
points(datetime, m3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lwd = 1, lty = c(1,1,1))
dev.off()