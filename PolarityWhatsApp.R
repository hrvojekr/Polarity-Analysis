install.packages("magrittr")
install.packages("xlsx")
install.packages("qdap")
install.packages("readxl")

library(xlsx)
library(qdap)
library(magrittr)
library("readxl")


getwd()

WAGypp <- read_excel("gyppWhatsApp.xlsx")

#read data
WAGypp <- read.xlsx("gyppWhatsApp.xlsx", sheetIndex = 1)

#examine the text data
WAGypp

#Calc overall polarity score
WAGypp %$% polarity(text)

#Calc by each GYPP member
(eachRes <- WAGypp %$% polarity(text, gypp))
counts(eachRes)

#plot the data
plot(eachRes)
