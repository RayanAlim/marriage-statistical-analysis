#### Preamble ####
# Purpose: Cleans the raw Marriage License data and cleans it 
# Author: Rayan Awad Alim
# Date: 19 Spetember 2024
# Contact: rayan.alim@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(tidyr)
library(lubridate)

#### Clean data ####
raw_data <- read.csv("raw_marriage_licences.csv")

clean_data <- raw_data %>%
  separate(Date, into = c("Year", "Month", "Day"), sep = "-") %>%
  mutate(Date = ymd(paste(Year, Month, Day, sep = "-"))) %>%
  select(Date, Number_of_Licences)



#### Save data ####
write.csv(clean_data, file = "outputs/data/cleaned_marriage_licences.csv")

