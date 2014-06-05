# Load data
data<-read.table('household_power_consumption.txt',header=TRUE,sep=";",na.string='?')

# Only use 1/2/2007 and 2/2/2007 data
dataSmall<-subset(data,data$Date=='1/2/2007' | data$Date=='2/2/2007')

# Combine the date and time and make sure they are in date and time format 
dataSmall$Moment<-as.POSIXct(paste(dataSmall$Date, dataSmall$Time), format="%d/%m/%Y %H:%M:%S")


# Open graphics device and plot the figure

png('/Users/anoukpost/Documents/Coursera/Exploratory_Data_Analysis/figure/plot3.png',width=480,height=480)
plot(dataSmall$Sub_metering_1~dataSmall$Moment,col='black',
     type='l',ylab='Energy sub metering',xlab='')
lines(dataSmall$Sub_metering_2~dataSmall$Moment,col='red')
lines(dataSmall$Sub_metering_3~dataSmall$Moment,col='blue')

# Add legend
legend("topright", pch = '-',lwd=c(2.5,2.5,2.5), col = c("black","red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
