##  Plot 1 
##
#setwd("C:/RProjectfolder/Exploratory Data Analysis/")
##
## reading in the data for Plot #1
##  Read in data from the location
message ("Reading the data for Plot1 - this may take a minute. :) ")
plot1data <- "./household_power_consumption.txt"
fulldataset <- read.table(plot1data, sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)
## I chose to read in all of the data and subset what needed to be plotted
## creating the data set needed for this plot
dataSet <- fulldataset[fulldataset$Date %in% c("1/2/2007","2/2/2007") ,]
##
#  GlAcPo = Global Active Power Data
GlAcPo <- as.numeric(dataSet$Global_active_power)
## Setting the layout dimensions and file name of the output plot
png("plot1.png", width=480, height=480)
## Creating a Histogram plot
message("Creating Plot 1")
hist(GlAcPo, main="Global Active Power", xlab="Global Active Power (kilowattts)", col="red")
##  Closing the file
dev.off()
message("Closing the Plot file")
##
