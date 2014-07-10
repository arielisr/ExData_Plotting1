## Create Plot1
## Exploratory data analysis course, Johns Hopkins/coursera
## Ariel Israel, Jul 2014

# read the data
data=read.csv('D:/datasets/exploratory_data_analysis/household_power_consumption.txt',sep=';',na.strings='?')
# select the dates 1.2.2007 and 2.2.2007
data=data[data$Date %in% c('1/2/2007','2/2/2007'),]
# convert the date
data$Date=strptime(paste(data$Date,data$Time),'%d/%m/%Y')
# draw the histogram
#png(filename = "plot2.png", width = 500, height = 500)
hist(data$Global_active_power,col='#ff2500',xlab='Global Active Power (Kilowatts)',main = "Global Active Power")
dev.off()
