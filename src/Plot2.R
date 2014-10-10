# load data
source("src/load.R")

# make plot
plot(
    data$DateTime,
    data$Global_active_power,
    type="l",
    xlab="",
    ylab="Global Active Power (kilowatts)"
)

# save plot to file
dev.copy(png, file="plots/plot2.png")
dev.off()