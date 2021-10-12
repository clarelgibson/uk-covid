# Title:       Read Data
# Project:     UK COVID
# Date:        2021-10-12
# Author:      Clare Gibson

# SUMMARY ############################################################
# This script reads in the data used for this project.
# Data source: https://coronavirus.data.gov.uk/details/download

# PACKAGES ###########################################################
library(tidyverse)

# READ DATA ##########################################################
# Define the URL where the data is located
url <- "https://api.coronavirus.data.gov.uk/v2/data?areaType=overview&metric=newAdmissions&metric=newCasesByPublishDate&metric=newDeaths28DaysByPublishDate&metric=newPeopleVaccinatedCompleteByPublishDate&format=csv"

# Read the data into a dataframe
df <- read_csv(url)

# EXPORT DATA ########################################################
write_csv(df,
          file="data-out/covid-uk.csv",
          na="")