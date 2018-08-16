data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2D <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(data2D$Date, data2D$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")

png("plot2.png", width = 480, height = 480)
plot(time, data2D$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()