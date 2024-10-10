#### Preamble ####
# Purpose: Simulates Green Day Spotify Data
# Author: Justin Klip, Dhruv Gupta, Kevin Shen.
# Date: 10 October 2024
# Contact: justin.klip@mail.utoronto.ca
# License: MIT
# Pre-requisites: None

# Load necessary packages
library(dplyr)
library(lubridate)
library(janitor)
library(tidyr)

# Load the Green Day data from the specified folder
green_day <- readRDS("data/raw_data/green_day.rds")

# View the initial structure of the dataset
str(green_day)

# Data Cleaning Steps

# 1. Clean column names
green_day_cleaned <- green_day %>%
  clean_names()  

# 3. Convert 'release_date' to Date type
green_day_cleaned <- green_day_cleaned %>%
  mutate(release_date = ymd(album_release_date))

# 4. Remove rows with missing values 
green_day_cleaned <- green_day_cleaned %>%
  drop_na()

# 5. Check for duplicates 
green_day_cleaned <- green_day_cleaned %>%
  distinct()

# View the cleaned dataset
str(green_day_cleaned)

# Save the cleaned data back to the folder
saveRDS(green_day_cleaned, "data/cleaned_data/green_day_cleaned.rds")