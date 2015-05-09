##  Plot 2
##
#setwd("C:/RProjectfolder/Exploratory Data Analysis/")
##
## reading in the data for Plot #2
##  Read in data from the location
message ("Reading the data for Plot2 - this may take a minute. :) ")
plot2data <- "./household_power_consumption.txt"
fulldataset <- read.table(plot2data, sep=";", dec=".", stringsAsFactors=FALSE, header=TRUE)
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
png("plot2.png", width=480, height=480)
## Creating a Plot
message("Creating Plot 2")
##  Only creating my y axis label - there was no x axis label requested, so I had to force an empty x axis
plot(DX, GlAcPo, ylab="Global Active Power (kilowattts)", xlab=" ", type="l")
##  Closing the file
dev.off()
message("Closing the Plot file")
##
