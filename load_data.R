options(gsubfn.engine = "R") #needed in order to load sqldf on mac
library(sqldf)

file = "household_power_consumption.txt"
l <- read.csv.sql(file, sql = 'select * from file where Date = "1/2/2007" OR Date = "2/2/2007"', sep = ";")

stopifnot(dim(l)[1] == 2880)