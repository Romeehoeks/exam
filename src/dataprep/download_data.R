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

dir.create('../../gen')
dir.create('../../gen/analysis')
dir.create('../../gen/analysis/input')
dir.create('../../gen/analysis/output')
dir.create('../../gen/dataprep')
dir.create('../../gen/dataprep/input')
dir.create('../../gen/dataprep/output')

write.csv(listings "../../gen/dataprep/input/listings.csv", row.names = FALSE)
write.csv(reviews, "../../gen/dataprep/input/reviews.csv", row.names = FALSE)

