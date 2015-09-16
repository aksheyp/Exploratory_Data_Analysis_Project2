# Verify to see whether the data has been loaded. If not, load the data.
if (!"ND" %in% ls()) {
  ND <- readRDS("C:/Users/Neena/Desktop/Coursera/NEI_data/summarySCC_PM25.rds")
}
if (!"SD" %in% ls()) {
  SD <- readRDS("C:/Users/Neena/Desktop/Coursera/NEI_data/Source_Classification_Code.rds")
}
head(ND)
head(SD)
dim(ND) # This has 6497651   6
dim(SD) # This has 11717    15
