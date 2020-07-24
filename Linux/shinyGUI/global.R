### Global variables, will be run at the start of the application

# extract metadata from csv
metadata <- read.csv('metadata.csv')
run_name <- metadata[metadata['attrib'] == 'run_name', 'value']
print("global.R: loaded run_name")
