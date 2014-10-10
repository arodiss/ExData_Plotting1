# load data
source("src/load.R")

# prepare canvas
par(mfrow=c(2,2))

# plot 1
plot(
    data$DateTime,
    data$Global_active_power,
    type="l",
    xlab="",
    ylab="Global Active Power"
)

# plot 2
plot(
    data$DateTime,
    data$Voltage,
    type="l",
    xlab="datetime",
    ylab="Voltage"    
)

# plot 3
plot(
    data$DateTime,
    data$Sub_metering_1,
    type="l",
    col="black",
    xlab="",
    ylab="Energy sub metering"
)
lines(data$DateTime, data$Sub_metering_2, type="l", col="red")
lines(data$DateTime, data$Sub_metering_3, type="l", col="blue")
legend(
    "topright",
    legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    bty="n",
    col=c("black", "red", "blue"),
    lty=c(1,1)
)

# plot 4
plot(
    data$DateTime,
    data$Global_reactive_power,
    type="l",
    xlab="datetime",
    ylab="Global_reactive_power"   
)

# save plot to file
dev.copy(png, file="plots/plot4.png")
dev.off()