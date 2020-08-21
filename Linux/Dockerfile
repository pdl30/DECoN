FROM r-base:4.0.2

LABEL base.image="decon_webapp:v0.3"

WORKDIR /usr/scripts/

# install system requirements
RUN apt-get update \
    && apt-get -y install libcurl4-openssl-dev libxml2-dev \
    && R -e "install.packages(c('packrat'))"

# install the actual webapp
COPY . /usr/scripts/DECoN/Linux
RUN cd DECoN/Linux \
    && Rscript sessionInfo.R --bootstrap-packrat

# keep in for now, but move to packrat if this is used in shiny
RUN R -e "install.packages(c('doParallel'), lib='/usr/scripts/DECoN/Linux/packrat/lib/x86_64-pc-linux-gnu/4.0.2/')"


WORKDIR /usr/scripts/DECoN/Linux

CMD ["bash"]

