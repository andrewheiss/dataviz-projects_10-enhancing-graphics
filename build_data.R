library(tidyverse)

# Save the tidytuesday data ----
tuesdata <- tidytuesdayR::tt_load('2020-09-15')
readr::write_csv(tuesdata$kids, "data/kids.csv")


# Build answer key so that the plots to recreate exist in images/ ----
quarto::quarto_render(
  "answers.qmd",
  output_format = c("html", "typst")
)
