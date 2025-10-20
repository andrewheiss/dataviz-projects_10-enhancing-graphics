library(tidyverse)

# Save the tidytuesday data ----
tuesdata <- tidytuesdayR::tt_load('2020-09-15')
readr::write_csv(tuesdata$kids, "data/kids.csv")


# Build answer key so that the plots to recreate exist in images/ ----
quarto::quarto_render(
  "answers.qmd",
  output_format = c("html", "typst")
)

# How to install Lato on Posit Cloud ----

# 1. Download the font from Google Fonts: 
#    <https://fonts.google.com/download?family=Lato>
# 2. Upload the .zip file to Posit Cloud
# 3. Rename the uploaded/unzipped folder to .fonts (or whatever, really; 
#    the . prefix keeps things clean)
# 4. Run this in the terminal to register the fonts and rebuilt the font cache:
#    fc-cache -fv ~/.fonts
