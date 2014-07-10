## Create Plot3
## Exploratory data analysis course, Johns Hopkins/coursera
## Ariel Israel, Jul 2014

# read the data
data=read.csv('D:/datasets/exploratory_data_analysis/household_power_consumption.txt',sep=';',na.strings='?')
# select the dates 1.2.2007 and 2.2.2007
data=data[data$Date %in% c('1/2/2007','2/2/2007'),]
# build the date-time from strings
data$DateTime=strptime(paste(data$Date,data$Time),'%d/%m/%Y %H:%M:%S')
# draw the plot
png(filename = "plot3.png", width = 500, height = 500)
plot(data$DateTime,data$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='',col='black')
lines(data$DateTime,data$Sub_metering_2,col='red')
lines(data$DateTime,data$Sub_metering_3,col='blue')
legend("topright", pch='_', col = c("black","red","blue"), legend = paste("Sub_metering",1:3,sep='_'))
dev.off()
