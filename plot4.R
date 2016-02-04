setwd("C:/Users/nitin/Desktop/coursera")
powerdf<- read.table("HPC.txt", header=TRUE, stringsAsFactors = FALSE, sep = ";", na.strings = "?")
df<- powerdf[powerdf$Date %in% c("1/2/2007","2/2/2007"), ]
##paste date and time and convery them into datetime format
datetime<- (paste(df$Date,df$Time))
library(lubridate)
date1<- dmy_hms(datetime)
df$datetime<- date1
#create plot4
par(mfrow=c(2,2))
par(mar= c(2,4,2,1))
plot(df$datetime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(df$datetime, df$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(df$datetime, df$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(df$datetime, df$Sub_metering_2, type="l", col= "red")
lines(df$datetime, df$Sub_metering_3, type="l", col= "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2, col=c("black", "red", "blue"),bty="n", cex = .5)
plot(df$datetime, df$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()


