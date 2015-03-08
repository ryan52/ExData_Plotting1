png(filename="plot3.png", width = 480, height = 480, units = "px")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
relData <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"), ]
relData$Sub_metering_1 <- as.numeric(as.character(relData$Sub_metering_1))
relData$Sub_metering_2 <- as.numeric(as.character(relData$Sub_metering_2))
relData$Sub_metering_3 <- as.numeric(as.character(relData$Sub_metering_3))
relData$datetime <- paste(relData$Date, relData$Time)
relData$datetime <- strptime(relData$datetime, format="%d/%m/%Y %H:%M:%S")
relData <- relData[, c(10, 3:9)]
plot(relData$datetime, relData$Sub_metering_1, col="black", ylab = "Energy sub metering", xlab="", type="l")
lines(relData$datetime, relData$Sub_metering_2, col="red")
lines(relData$datetime, relData$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()
