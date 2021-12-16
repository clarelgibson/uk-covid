# Title:       UK COVID Demographics
# Project:     UK COVID
# Date:        2021-12-12
# Author:      Clare Gibson

# SUMMARY ############################################################
# This script reads in the data used to analyse the demographic
# features of COVID 19 in the UK.
# Data source: https://coronavirus.data.gov.uk/details/download

# PACKAGES ###########################################################
library(tidyverse)

# READ DATA ##########################################################
# Define the URLs where the data is located
age_url <- "https://api.coronavirus.data.gov.uk/v2/data?areaType=nation&metric=newCasesBySpecimenDateAgeDemographics&format=csv"

# Read the data into a dataframe
# Age demographics
age_df <- read_csv(age_url)

# ONS Population data
ons_pop_df <- read_csv("data-in/ons-population-2021-08-05.csv")
