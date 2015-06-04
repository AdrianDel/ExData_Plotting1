plot3 <- function() {
    data <- read.csv("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE)
    data <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]
    power <- data.frame(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S"), as.numeric(data$Sub_metering_1), as.numeric(data$Sub_metering_2), as.numeric(data$Sub_metering_3))
    png(file = "plot3.png")
    plot(power[,c(1,2)], type="l",main = "",ylab = "Energy sub metering", xlab = "")
    lines(power[,c(1,3)],type="l", col="red")
    lines(power[,c(1,4)],type="l", col="blue")
    legend("topright", lty=1, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
}