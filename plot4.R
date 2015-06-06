source('prepare_data.R')

data <- prepare_data()

png('plot4.png')
par(mfrow=c(2,2))

plot(data$timestamps, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(data$timestamps, data$Voltage, type="l", xlab="", ylab="Voltage")
plot(data$timestamps, data$Sub_metering_1, type="l", ylab = "Energy Sub Metering", xlab="")
lines(data$timestamps, data$Sub_metering_2, col="red")
lines(data$timestamps, data$Sub_metering_3, col="blue")
plot(data$timestamps, data$Global_reactive_power, type="l", xlab="", ylab="Global Reactive Power")