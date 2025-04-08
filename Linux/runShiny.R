
renv::restore()

print("BEGIN runShiny.R")

library(methods)
library(labeling)
library(shiny)
library(R.utils)
library(optparse)

opt<-parse_args(OptionParser(option_list=option_list))


Data<-args$Rdata
cnvs <- args$cnvs

# Save metadata file
run_name <- gsub("_cnvs.csv$", "", basename(cnvs))
write.csv(
  data.frame(attrib = c("run_name"), value = c(run_name)),
  "shinyGUI/metadata.csv",
  row.names=FALSE
  )

file.copy(Data, "shinyGUI/Data.RData",overwrite=TRUE)
file.copy(cnvs, "shinyGUI/cnvs.csv",overwrite=TRUE)
runApp("shinyGUI",launch.browser=F, host='0.0.0.0', port=5888)


print("END runShiny.R")
