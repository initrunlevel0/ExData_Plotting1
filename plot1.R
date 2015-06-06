source('prepare_data.R')

data <- prepare_data()

png('plot1.png')
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (Killowats)", col="red")

