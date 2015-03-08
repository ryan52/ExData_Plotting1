png(filename="plot2.png", width = 480, height = 480, units = "px")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
relData <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"), ]
relData$Global_active_power <- as.numeric(as.character(relData$Global_active_power))
relData$datetime <- paste(relData$Date, relData$Time)
relData$datetime <- strptime(relData$datetime, format="%d/%m/%Y %H:%M:%S")
relData <- relData[, c(10, 3:9)]
plot(relData$datetime, relData$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab="", type="l")
dev.off()
