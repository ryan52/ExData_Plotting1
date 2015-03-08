png(filename="plot1.png", width = 480, height = 480, units = "px")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
relData <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"), ]
relData$Global_active_power <- as.numeric(as.character(relData$Global_active_power))
hist(relData$Global_active_power, col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", breaks=15)
dev.off()
