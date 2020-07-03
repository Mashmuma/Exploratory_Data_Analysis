
library(plyr)
library(dplyr)
library(dbplyr)
library(lubridate)
library(tidyr)
library(ggplot2)
library(tidyverse)


# Plot 1
power <- read.table("C:/Users/Mashmuma/Downloads/R_Assignment/household_power_consumption.txt",
                    header = TRUE, sep = ";")
power_filter <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
globalActivePower <- as.numeric(power_filter$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
