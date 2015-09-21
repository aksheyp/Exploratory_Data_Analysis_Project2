source("load_data.R")

par(mar=c(5.1, 4.1, 4.1, 2.1))
png(filename = "C:/Users/Neena/Desktop/Coursera/NEI_data/plot1.png", 
+     width = 480, height = 480, 
+     units = "px")

totalEmissions <- aggregate(NEI$Emissions, list(NEI$year), FUN = "sum")

plot(totalEmissions, type = "l", xlab = "Year", 
+      main = "Total Emissions in the US between the years 1999 - 2008", 
+      ylab = expression('Total PM'[2.5]*" Emission"))

dev.off()
