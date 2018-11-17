install.packages("xlsx")
install.packages("qdap")
install.packages("magrittr")

library(xlsx)
library(qdap)
library(magrittr)

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
