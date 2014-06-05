# Load data
data<-read.table('household_power_consumption.txt',header=TRUE,sep=";",na.string='?')

# Only use 1/2/2007 and 2/2/2007 data
dataSmall<-subset(data,data$Date=='1/2/2007' | data$Date=='2/2/2007')

# Combine the date and time and make sure they are in date and time format 
dataSmall$Moment<-as.POSIXct(paste(dataSmall$Date, dataSmall$Time), format="%d/%m/%Y %H:%M:%S")

# Open graphics device and plot the figure
png('/Users/anoukpost/Documents/Coursera/ExData_Plotting1/figure/plot2.png',width=480,height=480)
plot(dataSmall$Global_active_power~dataSmall$Moment,type='l',ylab='Global Active Power (kilowatts)',xlab='')
dev.off()

