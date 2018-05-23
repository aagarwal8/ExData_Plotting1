#load data
source("loaddata.R")

#plot
png("plot3.png", width = 480, height=480, units="px")
plot(data$timestamp, data$Sub_metering_1, xlab="", ylab="Energy sub metering", type="l")
points(data$timestamp, data$Sub_metering_2, col="red", type="l")
points(data$timestamp, data$Sub_metering_3, col="blue", type="l")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
dev.off()