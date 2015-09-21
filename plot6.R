source("load_data.R")

sset <- NEI[NEI$fips == "24510" | NEI$fips == "06037", ]

library(ggplot2)
par("mar"=c(5.1, 4.1, 4.1, 2.1))
png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot6.png", width = 480, height = 480, 
units = "px", bg = "transparent")

mv <- grep("motor", SCC$Short.Name, ignore.case = T)
mv <- SCC[motor, ]
mv <- sset[sset$SCC %in% motor$SCC, ]
 
g <- ggplot(mv, aes(year, Emissions, color = fips))
g + geom_line(stat = "summary", fun.y = "sum") +
ylab(expression('Total PM'[2.5]*" Emissions")) +
ggtitle("Comparing Total Emissions From Motor\n Vehicles in Baltimore City and\n L.A. County between 1999 - 2008") +
scale_colour_discrete(name = "Group", label = c("Los Angeles","Baltimore"))

dev.off()