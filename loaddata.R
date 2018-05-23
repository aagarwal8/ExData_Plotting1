#load required libraries
library(data.table)
library(lubridate)

#if data is not available, download and unzip to data/household_power_consumption.txt
if (!file.exists("data/household_power_consumption.txt")) {
    dir.create("data")
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="data/data.zip", method="curl")
    unzip("data/data.zip", exdir="data")
}

#read the data
dt <- fread("data/household_power_consumption.txt", sep=";", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"), na.strings = c("?"))
dt[, Date:=dmy(Date)]

#filter to only the 2 dates needed
data <- subset(dt, Date == "2007-02-01" | Date=="2007-02-02")
rm(dt)

#add a column "timestamp" to be used in plotting
data[, timestamp:=ymd_hms(paste(Date, Time))]