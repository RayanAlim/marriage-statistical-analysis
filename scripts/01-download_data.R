#### Preamble ####
# Purpose: Downloads and saves the data from the Toronto Open Data Portal
# Author: Rayan Awad Alim
# Date: 19 Spetember 2024
# Contact: rayan.alim@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
raw_marriage_data <-
  search_packages("Marriage Licence Statistics") %>% list_package_resources() %>% filter(row_number() == 1) %>% get_resource()

#### Save data ####
write.csv(raw_marriage_data, file = "raw_marriage_licences.csv", row.names = FALSE)
