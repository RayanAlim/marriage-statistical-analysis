# Toronto Marriage Licenses Statistical Analysis

## Overview

This project analyzes marriage license statistics in Toronto from 2011 to 2013. We look at the trend over time and across different civic centres using data from Open Data Toronto.

## Contents

- `00-Simulate_data.R`: Script to simulate marriage license data
- `01-download_data.R`: Script to download data from Open Data Toronto
- `02-data_cleaning.R`: Script to clean  the data
- `03-test_data.R`: Tests to sanity check the data


## Requirements

- R (version 4.0 or higher)
- R Packages:
  - `opendatatoronto`
  - `dplyr`
  - `ggplot2`
  - `lubridate`
  - `testthat`
  - `quarto` (for rendering the document)
