source('prepare_data.R')

data <- prepare_data()

png('plot3.png')
plot(data$timestamps, data$Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab="")
lines(data$timestamps, data$Sub_metering_2, col="red")
lines(data$timestamps, data$Sub_metering_3, col="blue")