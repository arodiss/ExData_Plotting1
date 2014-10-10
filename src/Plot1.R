# load data
source("src/load.R")

# make plot
hist(
    data$Global_active_power,
    col="red",
    main="Global Active Power",
    xlab="Global Active Power (kilowatts)",
    ylab="Frequency"
)

# save plot to file
dev.copy(png, file="plots/plot1.png")
dev.off()