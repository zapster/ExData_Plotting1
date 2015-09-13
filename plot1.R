source("readData.R")

createPlot <- function(d) {
    with(d, {
        hist(Global_active_power, col="red", main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)")
    })
}

createPNG("plot1.png", createPlot, getDataFrame())
