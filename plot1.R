# Load data
data<-read.table('household_power_consumption.txt',header=TRUE,sep=";",na.string='?')

# Only use 1/2/2007 and 2/2/2007 data
dataSmall<-subset(data,data$Date=='1/2/2007' | data$Date=='2/2/2007')

# Save graph as png file
png('/Users/anoukpost/Documents/Coursera/Exploratory_Data_Analysis/plot1.png',width=480,height=480)
hist(dataSmall$Global_active_power,col='red',
     xlab='Global Active Power (kilowatts)',main='Global Active Power')

dev.off()

