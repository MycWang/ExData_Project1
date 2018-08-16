data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data2D <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

time <- strptime(paste(data2D$Date, data2D$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English")

png("plot3.png", height = 480, width = 480)
with(data2D, {
        plot(time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
        lines(time, Sub_metering_2, type = "l", col = "Red")
        lines(time, Sub_metering_3, type = "l", col = "Blue")
        legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 1, col = c("Black", "Red", "Blue"), bty = "n")
        })

dev.off()