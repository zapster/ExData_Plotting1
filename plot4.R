source("readData.R")

createPlot <- function(d) {
    par(mfcol=c(2,2))
    with(d, {
        # fig1
        plot(Date, Global_active_power, type="l",
             ylab = "Global Active Power",
             xlab = "")
        # fig2
        plot(rep(Date,3), c(Sub_metering_1, Sub_metering_2, Sub_metering_3), type="n",
             ylab = "Energy sub metering",
             xlab = "")
        lines(Date, Sub_metering_1)
        lines(Date, Sub_metering_2, col="red")
        lines(Date, Sub_metering_3, col="blue")
        legend("topright",
               c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
               col=c("black", "red", "blue"), lty = 1, bty = "n")
        # fig3
        plot(Date, Voltage, type="l",
            xlab = "datetime")
        # fig4
        plot(Date, Global_reactive_power, type="l",
            xlab = "datetime")
    })
}

createPNG("plot4.png", createPlot, getDataFrame())
