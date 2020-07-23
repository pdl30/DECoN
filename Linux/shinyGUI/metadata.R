### Any extra metadata to be shared with the front end and back end can be defined here

# extract metadata from csv
metadata <- read.csv('metadata.csv')
run_name <- metadata[metadata['attrib'] == 'run_name', 'value']
print("metadata.R: loaded run_name")
