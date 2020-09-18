FROM r-base:4.0.2

ENV http_proxy=http://goshproxy.gosh.nhs.uk:8080
ENV https_proxy=http://goshproxy.gosh.nhs.uk:8080

WORKDIR /usr/scripts/

# install system requirements
RUN apt-get update \
    && apt-get -y install libcurl4-openssl-dev libxml2-dev

RUN R -e "install.packages('BBmisc',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')" 
RUN R -e "install.packages('BatchJobs',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('BiocGenerics',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('BiocParallel',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('Biostrings',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('DBI',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('ExomeDepth',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('GenomeInfoDb',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('GenomicAlignments',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('GenomicRanges',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('IRanges',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('R.methodsS3',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('R.oo',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('R.utils',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('R6',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('RColorBrewer',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('RJSONIO',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('RSQLite',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('Rcpp',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('Rsamtools',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('S4Vectors',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('VGAM',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('XVector',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('aod',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('base64enc',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('bitops',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('brew',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('checkmate',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('colorspace',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('dichromat',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('digest',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('fail',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('foreach',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN apt-get -y install libssl-dev

RUN R -e "install.packages('ggplot2',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('gtable',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('htmltools',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('httpuv',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('iterators',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('jsonlite',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('labeling',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('magrittr',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('mime',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('munsell',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('plyr',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('proto',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('reshape',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('reshape2',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('scales',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('sendmailR',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('shiny',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('stringi',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('stringr',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('xtable',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('zlibbioc',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"

RUN R -e "install.packages('DBI',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "install.packages('BiocManager', dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"
RUN R -e "BiocManager::install('BiocGenerics')"
RUN R -e "BiocManager::install('GenomicRanges')"
RUN R -e "BiocManager::install('BiocParallel')"
RUN R -e "BiocManager::install('Biostrings')"
RUN R -e "BiocManager::install('GenomeInfoDb')"
RUN R -e "BiocManager::install('GenomicAlignments')"
RUN R -e "BiocManager::install('IRanges')"
RUN R -e "BiocManager::install('Rsamtools')"
RUN R -e "BiocManager::install('S4Vectors')"
RUN R -e "BiocManager::install('XVector')"
RUN R -e "BiocManager::install('zlibbioc')"
RUN R -e "install.packages('ExomeDepth',dependencies=TRUE, repos='https://cran.ma.imperial.ac.uk')"

WORKDIR /usr/scripts/DECoN_webapp/Linux

COPY . /usr/scripts/DECoN_webapp/Linux

CMD ["bash"]


