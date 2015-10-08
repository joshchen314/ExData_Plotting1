#to get data

DataFile <- "./household_power_consumption.txt"

data <- read.table(DataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]


# to get subSetData
GlobalActivePower<-as.numeric(subSetData$Global_active_power)


# to draw
png("plot1.png", width=480, height=480)

hist(GlobalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()
