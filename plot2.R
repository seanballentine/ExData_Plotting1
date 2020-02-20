setwd(dirname(.rs.api.getActiveDocumentContext()$path))
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ';', stringsAsFactors = FALSE)
                                                                                              
                                                                                               
                                                                                              
data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',]


png(filename = "plot2.png")
plot(as.POSIXct(paste(data$Date, data$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S") ,
     as.numeric(data$Global_active_power), col="black" , 
     type = 'l',
     ylab = "Global Active Power (kilowatts)",
     xlab = "")
dev.off()
