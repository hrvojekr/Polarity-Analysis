 install.packages("xlsx")
 install.packages("qdap")
 install.packages("magrittr")
 
 library(xlsx)
 library(qdap)
 library(magrittr)
 
#read data
theWayIAm <- read.xlsx("theWayIam.xlsx", sheetIndex = 1)

#examine the text data
theWayIAm

#Polarity 2nd

#Polarized Term - positive/negative
#Neutral 
#Negator - words that invert polarize meaning ("not good")
#Valence Shifter - Amplifiers and De-Amplifiers ("very good")

# Polarity - All
polarity(theWayIAm$lyrics)

#Find Out Problem
key.pol[grep("friendly", x)]
key.pol[grep("decency", x)]
key.pol[grep("mothafuckin'", x)]

#Mix Words to Dictionary

cus_dic <- sentiment_frame(positive.words, c(negative.words, "friendly", "decency", "mothafuckin'"))

#new score
polarity(theWayIAm$lyrics, polarity.frame = cus_dic)
