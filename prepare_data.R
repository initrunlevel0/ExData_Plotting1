prepare_data <- function() {
  if(!file.exists('household_power_consumption.txt')) {
    download.file('http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip', destfile='tmp.zip')
    unzip('tmp.zip')
    file.remove('tmp.zip')
  }
  
  thedata <- read.csv('household_power_consumption.txt', sep=';')
  thedata$Date <- as.Date(thedata$Date, format="%d/%m/%Y")  
  thedata <- subset(thedata, thedata$Date >= "2007-02-01" & thedata$Date <= "2007-02-02")
  
  thedata$Global_active_power <- as.double(as.character(thedata$Global_active_power))
  thedata$timestamps = strptime(paste(thedata$Date, thedata$Time), format="%Y-%m-%d %H:%M:%S")
  return(thedata)
}