#### Preamble ####
# Purpose: Sanity check our simulated data
# Author: Rayan Awad Alim
# Date: 19 Spetember 2024
# Pre-requisites: Need to have simulated data
# Contact: rayan.alim@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(testthat)


#### Test data ####
data <- read.csv("simulated_marriage_licences.csv")

# Test all dates are unique
test_that("All dates are unique", {
  expect_equal(length(data$Date),
               length(unique(data$Date)))
})

# Test that the number of licenses should not be non-negative
test_that("Number of licenses is non-negative", {
  expect_true(all(data$Number_of_Licences >= 0))
})
