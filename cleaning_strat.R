#### Preamble ####
# Purpose: Prepare and clean post-strat data
# Author: Myname
# Data: November 2, 2020
# Contact: email
# License: MIT
# Pre-requisites: 
# Use on the data first # IPMUS ACS 5 year 2018 data 

library(haven)
library(tidyverse)

#setwd is commented, uncomment if you need to use it
#setwd("C:/STA304/STA304_PS3")
raw_data <- read_dta("usa_00002.dta")

# Just keep some variables that may be of interest (change 
# this depending on your interests)
reduced_data <- raw_data %>% select( sex , age)



# Saving the census data as a csv file in my
# working directory
write_csv(reduced_data, "census_data.csv")
