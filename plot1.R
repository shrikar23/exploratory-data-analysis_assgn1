consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
needed <- consumption[consumption$Date %in% c("1/2/2007","2/2/2007"),]
gap <- as.numeric(as.character(needed$Global_active_power))
png(file = "plot1.png", width = 480, height = 480)
hist(gap, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
