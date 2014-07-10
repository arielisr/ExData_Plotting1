## Create Plot4
## Exploratory data analysis course, Johns Hopkins/coursera
## Ariel Israel, Jul 2014

# read the data
data=read.csv('D:/datasets/exploratory_data_analysis/household_power_consumption.txt',sep=';',na.strings='?')
# select the dates 1.2.2007 and 2.2.2007
data=data[data$Date %in% c('1/2/2007','2/2/2007'),]
# build the date-time from strings
data$DateTime=strptime(paste(data$Date,data$Time),'%d/%m/%Y %H:%M:%S')
# draw the plot
png(filename = "plot4.png", width = 800, height = 800)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(data, {
    plot(DateTime,Global_active_power,type='l',ylab='Global Active Power (Kilowatts)',xlab='')
    plot(DateTime,Voltage,type='l',ylab='Voltage',xlab='',col='black')
    plot(DateTime,Sub_metering_1,type='l',ylab='Energy sub metering',xlab='',col='black')
    lines(DateTime,Sub_metering_2,col='red')
    lines(DateTime,Sub_metering_3,col='blue')
    legend("topright", pch='_', col = c("black","red","blue"), legend = paste("Sub_metering",1:3,sep='_'))
    plot(DateTime,Global_reactive_power,type='l',ylab='Voltage',xlab='',col='black')
})
dev.off()
