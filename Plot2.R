setwd("C:/Users/nitin/Desktop/coursera")
powerdf<- read.table("HPC.txt", header=TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")
df<- powerdf[powerdf$Date %in% c("1/2/2007","2/2/2007"), ]
##paste date and time and convery them into datetime format
datetime<- (paste(df$Date,df$Time))
library(lubridate)
date1<- dmy_hms(datetime)
df$datetime<- date1
#plot2
plot(df$datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
 