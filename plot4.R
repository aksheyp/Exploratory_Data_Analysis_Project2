source("load_data.R")

par("mar"=c(5.1, 4.1, 4.1, 2.1))
png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot4.png", width = 480, height = 480, units = "px")

coal <- grep("coal", SCC$Short.Name, ignore.case = T)
coal <- SCC[coal, ]
coal <- NEI[NEI$SCC %in% coal$SCC, ]

coalEm <- aggregate(coal$Emissions, list(coal$year), FUN = "sum")

plot(coalEmissions, type = "l", xlab = "Year", 
main = "Total Emissions From Coal \n Sources between 1999 - 2008", 
ylab = expression('Total PM'[2.5]*" Emission"))
 
dev.off()