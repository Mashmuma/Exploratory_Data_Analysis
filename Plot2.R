
library(plyr)
library(dplyr)
library(dbplyr)
library(lubridate)
library(tidyr)
library(ggplot2)
library(tidyverse)


# Plot 2
power <- read.table("C:/Users/Mashmuma/Downloads/R_Assignment/household_power_consumption.txt",
                    header = TRUE, sep = ";")
power_filter <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
datetime <- strptime(paste(power_filter$Date, power_filter$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(power_filter$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

