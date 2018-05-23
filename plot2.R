#load data
source("loaddata.R")

#plot
png("plot2.png", width = 480, height=480, units="px")
plot(data$timestamp, data$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.off()