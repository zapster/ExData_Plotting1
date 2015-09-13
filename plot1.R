source("readData.R")

createPlot <- function(d) {
    hist(d[,2], col="red", main = "Global ActivePower",
         xlab = "Global Active Power (kilowatts)")
}

createPNG("plot1.png", createPlot, getDataFrame())
