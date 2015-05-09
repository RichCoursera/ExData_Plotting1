##  Plot 4
##
#setwd("C:/RProjectfolder/Exploratory Data Analysis/")
##
## reading in the data for Plot #4
##  Read in data from the location
message ("Reading the data for Plot4 - this may take a minute. :) ")
plot4data <- "./household_power_consumption.txt"
fulldataset <- read.table(plot4data, sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)
## I chose to read in all of the data and subset what needed to be plotted
## creating the data set needed for this plot - I like using "%in%" as I believe it is faster than checking >= and <= for the date range
dataSet <- fulldataset[fulldataset$Date %in% c("1/2/2007","2/2/2007") ,]
##
#  GlAcPo = Global Active Power Data
GlAcPo <- as.numeric(dataSet$Global_active_power)
## Getting and formatting the Date/Time axis
D4<- paste(dataSet$Date, dataSet$Time)
DX<- strptime(D4, "%d/%m/%Y %H:%M:%S")
#
## Setting the layout dimensions and file name of the output plot
## and setting the output plot to be 2 x 2
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
## Creating a Plot
message("Creating Plot 4")
## Creating sub-plot 1
plot(DX, GlAcPo, ylab="Global Active Power", xlab=" ", type="l")
#
## Creating Voltage sub-plot 2
plot(DX, dataSet$Voltage, ylab="Voltage", xlab="dateTime" , type="l")
#
## Creating sub-plot 3
plot(DX, dataSet$Sub_metering_1, ylab="Energy sub metering", xlab=" ", type="l", col = "black")
lines(DX, dataSet$Sub_metering_2, type="l", col="red")
lines(DX, dataSet$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty = "n")
#
## Creating sub-plot 4
plot(DX, dataSet$Global_reactive_power, ylab="Global reactive power", xlab="dateTime" , type="l")
#
##  Closing the file
dev.off()
message("Closing the Plot file")
##
