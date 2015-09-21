source("load_data.R")

sset <- NEI[NEI$fips == "24510", ] 
par("mar"=c(5.1, 4.1, 4.1, 2.1))

png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot5.png", width = 480, height = 480, units = "px")

mv <- grep("motor", SCC$Short.Name, ignore.case = T)
mv <- SCC[motor, ]
mv <- sset[sset$SCC %in% motor$SCC, ]
me <- aggregate(mv$Emissions, list(mv$year), FUN = "sum")
 
plot(me, type = "l", xlab = "Year", 
main = "Total Emissions From Motor Vehicle in Baltimore\n between 1999 - 2008", 
ylab = expression('Total PM'[2.5]*" Emission"))
 
dev.off()