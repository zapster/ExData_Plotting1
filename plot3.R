source("readData.R")

createPNG <- function(f, ...) {
    png("plot3.png", width = 480, height = 480)
    f(...)
    dev.off()
}

createPlot <- function(d) {
    with(d, {
        plot(rep(Date,3), c(Sub_metering_1, Sub_metering_2, Sub_metering_3), type="n",
             ylab = "Energy sub metering",
             xlab = "")
        lines(Date, Sub_metering_1)
        lines(Date, Sub_metering_2, col="red")
        lines(Date, Sub_metering_3, col="blue")
        legend("topright",
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black", "red", "blue"), lty = 1)
    })
}