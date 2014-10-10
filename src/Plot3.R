# load data
source("src/load.R")

# make plot
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
    col=c("black", "red", "blue"),
    lty=c(1,1)
)

# save plot to file
dev.copy(png, file="plots/plot3.png")
dev.off()