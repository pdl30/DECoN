### Global variables, will be run once at the start of the application

# extract metadata from csv
metadata <- read.csv('metadata.csv', stringsAsFactors = FALSE)

get_metadata <- function(metadata_name) {
    #' Utility function to return metadata value for a given key,
    #' means that you don't have magic variables from global appearing all the time
    metadata[metadata['attrib'] == metadata_name, 'value']
}

print("global.R: loaded get_metadata function")
print(paste0("avaiable metadata: ", paste(metadata$attrib, collapse = ", ")))