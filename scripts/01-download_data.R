#### Preamble ####
# Purpose: Simulates Green Day Spotify Data
# Author: Justin Klip, Dhruv Gupta, Kevin Shen.
# Date: 10 October 2024
# Contact: justin.klip@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

#Load Packages
library(remotes)
library(usethis)
library(spotifyr)
library(dplyr)
library(lubridate)
library(ggplot2)

# Use the Spotify ID directly for Green Day
green_day_id <- "7oPftvlwr6VrsViSDV7fJY"

# Fetch audio features for Green Day
green_day <- get_artist_audio_features(green_day_id)

# Save the data
saveRDS(green_day, "data/raw_data/green_day.rds")

