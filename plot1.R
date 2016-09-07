#Course 4/Week 1 - Assignment
#
##   plot1.R
##
## September, 2016
## Julie Foster

#  Read in dataset
#      Note: previewing the raw data file with Notepad++, found the input for 
#            arguments:  skip and nrows.
power <- read.csv("./data/household_power_consumption.txt", sep=";", 
    skip=66637, nrows=2880, na.strings = "?")
names(power) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", 
   "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3") 

# Create plot
png(file="plot1.png", width= 480, height = 480)
with(power, hist(Global_active_power, col="orangered", 
    xlab="Global Active Power (kilowatts)", main="Global Active Power"))
dev.off()
