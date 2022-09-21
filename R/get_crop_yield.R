#' Add together two numbers
#'
#' desc
#'
#' detail
#'
#' @param x A number.
#' @param y A number.
#' @return The sum of `x` and `y`.
#' @examples
#' add(1, 1)
#' add(10, 1)
#'
#' @export
get_crop_yield <- function() {

  entity <- code <- year <- crop <- NULL

  url <- 'https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-09-01/key_crop_yields.csv'

  `%>%` <- magrittr::`%>%`

  readr::read_csv(url) %>%
    janitor::clean_names() %>%
    tidyr::pivot_longer(
      cols = -c(entity, code, year),
      names_to = "crop",
      values_to = "yield"
    ) %>%
    dplyr::mutate(crop = gsub("_tonnes_per_hectare", "", crop))
}


some_function <- function() {
  1 + 1
}

# 1. we can't use any library(), option(), etc. which will affect the system in our R folder
# non standard evaluation
