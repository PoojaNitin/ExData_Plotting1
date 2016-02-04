setwd("C:/Users/nitin/Desktop/coursera")
##Download the data in coursera folder and read it.
powerdf<- read.table("HPC.txt", header=TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")
##subset the data with dates from 1/2/2007 to 2/2/2007
df<- powerdf[powerdf$Date %in% c("1/2/2007","2/2/2007"), ]
##create plot1
hist(subHPC$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red", ylim = c(0,  1200), xlim = c(0, 6))
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
