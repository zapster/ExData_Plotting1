source("readData.R")

createPlot <- function(d) {
    plot(d$Date, d$Global_active_power, type="l",
         ylab = "Global Active Power (kilowatts)",
         xlab = "")
}

createPNG("plot2.png", createPlot, getDataFrame())
