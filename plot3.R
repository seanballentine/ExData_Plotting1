setwd(dirname(.rs.api.getActiveDocumentContext()$path))
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ';', stringsAsFactors = FALSE)
                                                                                              
                                                                                               
                                                                                              
data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',]


png(filename = "plot3.png")
plot(as.POSIXct(paste(data$Date, data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"), 
     data$Sub_metering_1,
     type = 'l',
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(as.POSIXct(paste(data$Date, data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"),
      data$Sub_metering_2,
      col="red")
lines(as.POSIXct(paste(data$Date, data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S"),
      data$Sub_metering_3,
      col="blue")
legend("topright",
      legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
      lty = c(1,1,1) , 
      col=c("black", "red", "blue"))
dev.off()
