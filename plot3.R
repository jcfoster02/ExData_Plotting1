#Course 4/Week 1 - Assignment
#
##   plot3.R
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

# Add column that is combination of Date and Time
power$times <- strptime(paste(power$Date, power$Time, sep=" "), 
                        format="%d/%m/%Y %H:%M:%S")

# Create plot
png(file="plot3.png", width= 480, height = 480)
   plot(power$times, power$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
    lines(power$times, power$Sub_metering_2, col = "red")
    lines(power$times, power$Sub_metering_3, col = "blue")
    legend("topright", lty=c(1,1,1), lwd=c(2.5,2.5,2.5), col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
