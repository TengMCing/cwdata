## code to prepare `crop_yield` dataset goes here

library(janitor)
library(tidyverse)

url <- 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-01/key_crop_yields.csv'

crop_yield <- read_csv(url) %>%
  clean_names() %>%
  pivot_longer(
    cols = -c(entity, code, year),
    names_to = "crop",
    values_to = "yield"
  ) %>%
  mutate(crop = gsub("_tonnes_per_hectare", "", crop))

usethis::use_data(crop_yield, overwrite = TRUE)
