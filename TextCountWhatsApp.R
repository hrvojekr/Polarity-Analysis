
install.packages("tm")
install.packages("qdap")

library(tm)
library(qdap)

clean_corpus <- function(corpus){
  corpus <- tm_map(corpus, content_transformer(replace_abbreviation))
  corpus <- tm_map(corpus, removePunctuation)
  corpus <- tm_map(corpus, removeNumbers)
  corpus <- tm_map(corpus, removeWords, c(stopwords("en"), "coffee"))
  corpus <- tm_map(corpus, content_transformer(tolower))
  corpus <- tm_map(corpus, stripWhitespace)
  return(corpus)
}


clean_corpus
rumbling

typeof("rambling")

# Create a VectorSource
rb_vector <- VectorSource(rumbling)
rb_vector

# Apply VCorpus
rb_corpus <- VCorpus(rb_vector)

# Examine contents
content(rb_corpus[[1]])

# Clean the text
rb_clean <- clean_corpus(rb_corpus)

# Reexamine the contents of the first doc
content(rb_clean[[1]])

#DTM 
rb_dtm <- DocumentTermMatrix(rb_clean)

#DTM as Matrix

rb_dtm_matrix <- as.matrix(rb_dtm)

#See Dimensions

dim(rb_dtm_matrix)

#Transpose to make it usefull

trans_rb_dtm <- t(rb_dtm_matrix)

