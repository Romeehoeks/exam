######################
### DOWNLOAD DATA ####
######################
library(dplyr)
library(reshape2)

download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

url_listings <- "http://data.insideairbnb.com/germany/be/berlin/2021-09-21/visualisations/listings.csv"
url_reviews <- "http://data.insideairbnb.com/germany/be/berlin/2021-09-21/visualisations/reviews.csv"

download_data(url_listings, "listings")
download_data(url_reviews, "reviews")
