source("readData.R")

createPNG <- function(f, ...) {
    png("plot2.png", width = 480, height = 480)
    f(...)
    dev.off()
}

createPlot <- function(d) {
    plot(d$Date, d$Global_active_power, type="l",
         ylab = "Global Active Power (kilowatts)",
         xlab = "")
}