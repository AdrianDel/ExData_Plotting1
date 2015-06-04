plot1 <- function() {
    data <- read.csv("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE)
    power <- as.numeric(data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),3])
    png(file = "plot1.png")
    with(faithful,hist(power, main = "Global Active Power", col="red",xlab = "Global Active Power (kilowatts)", ylab = "Frequency"))
    dev.off()
}