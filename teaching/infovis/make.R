# This file runs all test documents


library(stringr)
# run test files
base_path <- "teaching/infovis"
files <- dir(path = base_path, pattern = "*.Rmd")

# remove the readme
files <- files[!files %in% c("README.Rmd")]

output <- str_replace(files, ".Rmd", ".html")
output <- paste0("output/", output)


for (i in 1:length(files)) {
  message(paste0("Rendering document: ", files[i]))
  rmarkdown::render(input = paste0(base_path, "/", files[i]))
}
