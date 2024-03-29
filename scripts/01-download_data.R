#### Preamble ####
# Purpose: Simulates data
# Author: Will Davidson
# Data: 20 April 2023
# Contact: w.davidson@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
list <- list_package_resources("https://open.toronto.ca/dataset/toronto-shelter-system-flow/")
#a <- search_packages("toronto shelter system flow")

df <- list[list$name=='toronto-shelter-system-flow.csv',] %>%
  get_resource()



#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(df, "inputs/data/raw_data.csv") 

         