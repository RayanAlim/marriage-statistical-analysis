#### Preamble ####
# Purpose: Simulate Marriange liscnes data
# Author: Rayan Awad Alim
# Date: 19 Spetember 2024
# Contact: rayan.alim@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
set.seed(2312)  # for reproducibility


#### Simulate data ####
dates <-
  seq(as.Date('2023-01-01'), 
      as.Date('2023-12-31'), 
      by = 'day') # sequence of dates

number_of_licences <-
  rpois(length(dates), 
        lambda = 10) # using a poisson distribution to simulate the number of licences

marriage_data <-
  data.frame(Date = dates, 
             Number_of_Licences = number_of_licences)

# Make a CSV file
write.csv(marriage_data, file = "simulated_marriage_licences.csv", row.names = FALSE)
