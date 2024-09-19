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

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |> 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-"))
  )

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/cleaned_marriage_licences.csv")