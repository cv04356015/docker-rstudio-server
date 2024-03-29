# FROM rocker/rstudio:3.5.2
FROM rocker/rstudio:devel

RUN export ADD=shiny && bash /etc/cont-init.d/add

# RUN apt-get update -qq && apt-get -y --no-install-recommends install \
#  libxml2-dev \
#  libcairo2-dev \
#  libsqlite3-dev \
#  libmariadbd-dev \
#  libmariadb-client-lgpl-dev \
#  libpq-dev \
#  libssl-dev \
#  libcurl4-openssl-dev \
#  libssh2-1-dev \
#  unixodbc-dev \
#  && install2.r --error \
#    --deps TRUE \
#    tidyverse \
#    dplyr \
#    devtools \
#    formatR \
#    remotes \
#    selectr \
#    caTools \
#	BiocManager

	
RUN apt-get update -qq && apt-get -y install \
  default-jdk \
  r-cran-rjava \
  && install2.r --error \
    mailR \
    shinyalert \
    shinydashboard \
    httr
