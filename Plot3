##  Plot 3
##
#setwd("C:/RProjectfolder/Exploratory Data Analysis/")
##
## reading in the data for Plot #3
##  Read in data from the location
message ("Reading the data for Plot3 - this may take a minute. :) ")
plot3data <- "./household_power_consumption.txt"
fulldataset <- read.table(plot3data, sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)
## I chose to read in all of the data and subset what needed to be plotted
## creating the data set needed for this plot - I like using "%in%" as I believe it is faster than checking >= and <= for the date range
dataSet <- fulldataset[fulldataset$Date %in% c("1/2/2007","2/2/2007") ,]
##
## Getting and formatting the Date/Time axis
D4<- paste(dataSet$Date, dataSet$Time)
DX<- strptime(D4, "%d/%m/%Y %H:%M:%S")
#
## Setting the layout dimensions and file name of the output plot
png("plot3.png", width=480, height=480)
## Creating a Plot
message("Creating Plot 3")
##  Only creating my y axis label - there was no x axis label requested, so I had to force an empty x axis
plot(DX, dataSet$Sub_metering_1, ylab="Global Active Power (kilowattts)", xlab=" ", type="l", col = "black")
lines(DX, dataSet$Sub_metering_2, type="l", col="red")
lines(DX, dataSet$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
##  Closing the file
dev.off()
message("Closing the Plot file")
##
