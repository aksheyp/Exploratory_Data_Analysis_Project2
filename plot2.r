source("load_data.R")

sset <- NEI[NEI$fips == "24510", ] 
par("mar"=c(5.1, 4.1, 4.1, 2.1))
png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot2.png", 
width = 480, height = 480, units = "px")

totEmissions <- aggregate(sset$Emissions, list(sset$year), FUN = "sum")

plot(totEmissions, type = "l", xlab = "Year", 
main = "Total Emissions in Baltimore City between 1999 - 2008", 
ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()