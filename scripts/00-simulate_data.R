#### Preamble ####
# Purpose: Simulates Green Day Spotify Data
# Author: Justin Klip, Dhruv Gupta, Kevin Shen.
# Date: 10 October 2024
# Contact: justin.klip@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

# Load libraries
library(dplyr)
library(tidyr)

# Set random seed for reproducibility
set.seed(31459)

# Function to simulate track data
simulate_track_data <- function(n) {
  
  # Simulating unique track IDs
  Track_ID <- 1:n
  
  # Simulating album IDs (12 tracks per album)
  Album_ID <- rep(1:(n / 12), each = 12)
  
  # Simulating energy (values between 0 and 1)
  Energy <- runif(n, 0, 1)
  
  # Simulating tempo (values between 75 and 200 BPM)
  Tempo <- runif(n, 75, 200)
  
  # Simulating valence (values between 0 and 1)
  Valence <- runif(n, 0, 1)
  
  
  # Creating the data frame
  simulated_data <- data.frame(Track_ID, Album_ID, Energy, Tempo, Valence)
  
  return(simulated_data)
}

# Simulating data for 300 tracks
simulated_green_day_data <- simulate_track_data(300)

# View the first few rows of the simulated dataset
print(head(simulated_green_day_data))

# Save the simulated data to an RDS file
saveRDS(simulated_green_day_data, "data/raw_data/simulated_green_day_data.rds")