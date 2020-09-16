FROM r-base:4.0.2

ENV http_proxy=http://goshproxy.gosh.nhs.uk:8080
ENV https_proxy=http://goshproxy.gosh.nhs.uk:8080

WORKDIR /usr/scripts/

# install system requirements
RUN apt-get update \
    && apt-get -y install libcurl4-openssl-dev libxml2-dev \
    && R -e "install.packages(c('packrat'))"

# get DECoN and install requirements

COPY packrat /usr/scripts/DECoN_webapp/Linux/packrat
COPY sessionInfo.R /usr/scripts/DECoN_webapp/Linux
COPY .Rprofile /usr/scripts/DECoN_webapp/Linux


WORKDIR /usr/scripts/DECoN_webapp/Linux
RUN Rscript sessionInfo.R --bootstrap-packrat

COPY . /usr/scripts/DECoN_webapp/Linux

CMD ["bash"]


