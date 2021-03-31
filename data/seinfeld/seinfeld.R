# seinfeld.R

library(dplyr)
setwd("C:/Users/rnatarajan/workspace/R/Seinfeld")
sein <- read.csv("seinfeld.csv", stringsAsFactors=FALSE)

sein <- arrange(sein, Season, Episode)

# Find the mean rating per season
r <- split(sein$Rating, sein$Season)
rs <- sapply(r, mean)

# Or more elegently ...
rt <- tapply(sein$Rating, sein$Season, mean)