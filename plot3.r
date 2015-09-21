source("load_data.R")

subset <- NEI[NEI$fips == "24510", ] 

library(ggplot2)
par("mar"=c(5.1, 4.1, 4.1, 2.1))

png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot3.png", width = 480, height = 480, 
units = "px")

g <- ggplot(sset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") + ylab(expression('Total PM'[2.5]*" Emissions")) +
ggtitle("Total Emissions in Baltimore City between 1999 - 2008")

dev.off()