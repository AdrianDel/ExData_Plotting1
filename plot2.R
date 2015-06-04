plot2 <- function() {
    data <- read.csv("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE)
    data <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]
    power <- data.frame(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S"), as.numeric(data[,3]))
    png(file = "plot2.png")
    plot(power, type="l",main = "",ylab = "Global Active Power (kilowatts)", xlab = "")
    dev.off()
}