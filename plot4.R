
#load data
source("loaddata.R")

#plot
png("plot4.png", width = 480, height=480, units="px")
par(mfrow=c(2,2))
plot(data$timestamp, data$Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(data$timestamp, data$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(data$timestamp, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(data$timestamp, data$Sub_metering_2, col="red", type="l")
points(data$timestamp, data$Sub_metering_3, col="blue", type="l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1), bty="n")
plot(data$timestamp, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
dev.off()
