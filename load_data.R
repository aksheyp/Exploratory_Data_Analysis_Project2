# Code to see whether both data files exist. If not, load the data.
if (!"NEI" %in% ls()) {
  NEI <- readRDS("C:/Users/Neena/Desktop/Coursera/NEI_data/summarySCC_PM25.rds")
}
if (!"SCC" %in% ls()) {
  SCC <- readRDS("C:/Users/Neena/Desktop/Coursera/NEI_data/Source_Classification_Code.rds")
}
head(NEI)
head(SCC)
dim(NEI) # this contains 6497651  6
dim(SCC) # this contains 11717  15 

