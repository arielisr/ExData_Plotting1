## Create Plot1
## Exploratory data analysis course, Johns Hopkins/coursera

# read the data
setwd('d:/datasets/exploratory_data_analysis')
data=read.csv('household_power_consumption.txt',sep=';',na.strings='?')
data=data[data$Date %in% c('1/2/2007','2/2/2007'),]
data$Date=strptime(data$Date,'%d/%m/%Y')
hist(data$Global_active_power,col='#ff2500',xlab='Global Active Power (Kilowatts)',main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()
