dataset <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- dataset[dataset$Date %in% c("1/2/2007","2/2/2007") ,]
global_Active_Power <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_Active_Power, col="red", main="Global Active Power", xlab="Global Active Power (in kilowatts)")
dev.off()
