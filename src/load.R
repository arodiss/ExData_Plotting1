# prepare well-formed data frame

# decompress data
unzip("data.zip")

# read data and combine it with headers
header <- read.table(
  "data.txt",
  nrows=1,
  header=T,
  sep=";"
)
data <- read.table(
  "data.txt",
  skip=66600,
  nrows=3000,
  na.strings=c("?"),
  sep=";"
)
colnames(data) <- colnames(header)

# add additional DateTime column
data$DateTime = as.POSIXct(
  paste(data$Date, data$Time),
  format="%d/%m/%Y%H:%M:%S"
)

# parse date and time
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Time <- strptime(data$Time, format="%H:%M:%S")

# filter out wrong dates
dataFilter <- data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")
data <- data[dataFilter, ]