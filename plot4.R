plot4 <- function() {
    data <- read.csv("household_power_consumption.txt", header=TRUE, sep = ";", stringsAsFactors=FALSE)
    data <- data[(data$Date == '1/2/2007' | data$Date == '2/2/2007'),]
    power <- data.frame(strptime(paste(data[,1],data[,2]), "%d/%m/%Y %H:%M:%S"), data[,3:9])
    png(file = "plot4.png")
    par(mfrow = c(2,2))
    plot(power[,c(1,2)], type="l",main = "",ylab = "Global active power", xlab = "")
    plot(power[,c(1,4)], type="l",main = "",ylab = "Voltage", xlab = "Datetime")
    
    plot(power[,c(1,6)], type="l",main = "",ylab = "Energy sub metering", xlab = "")
    lines(power[,c(1,7)],type="l", col="red")
    lines(power[,c(1,8)],type="l", col="blue")
    legend("topright", lty=1, col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")
    
    plot(power[,c(1,3)], type="l",main = "",ylab = "Global_reactive_power", xlab = "Datetime")
    dev.off()
}