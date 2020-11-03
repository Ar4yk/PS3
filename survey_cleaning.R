#### Preamble ####
# Purpose: Prepare and clean post-strat data
# Author: Myname
# Data: November 2, 2020
# Contact: email
# License: MIT
# Pre-requisites: 
# Use on the data for survey


#### Workspace setup ####
library(haven)
library(tidyverse)

# Read in the raw data (You might need to change this if you use a different dataset)
# setwd is commented, uncomment if you need to use it
#setwd("C:/STA304/STA304_PS3")

raw_data <- read_dta("ns20200625.dta")

raw_data <- labelled::to_factor(raw_data)
# Just keep some variables
reduced_data <- raw_data %>% select(interest,
         registration,
         vote_2016,
         vote_intention,
         vote_2020,
         ideo5,
         employment,
         foreign_born,
         gender,
         census_region,
         hispanic,
         race_ethnicity,
         household_income,
         education,
         state,
         congress_district,
         age)



reduced_data<- reduced_data %>% mutate(vote_trump = ifelse(vote_2020=="Donald Trump", 1, 0))

reduced_data<- reduced_data %>% mutate(vote_biden = ifelse(vote_2020=="Joe Biden", 1, 0))


# Saving the survey/sample data as a csv file in my
# working directory
write_csv(reduced_data, "survey_data.csv")
