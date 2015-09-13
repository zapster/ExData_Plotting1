source("readData.R")

createPNG <- function(f, ...) {
    png("plot1.png", width = 480, height = 480)
    f(...)
    dev.off()
}

createPlot <- function(d) {
    hist(d[,2], col="red", main = "Global ActivePower",
         xlab = "Global Active Power (kilowatts)")
}