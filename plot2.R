source('prepare_data.R')

data <- prepare_data()

png('plot2.png')
plot(data$timestamps, data$Global_active_power, type="l", ylab = "Global Active Power (killowats)", xlab="")