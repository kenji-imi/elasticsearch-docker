ARG IMAGE_VERSION
FROM docker.elastic.co/elasticsearch/elasticsearch:$IMAGE_VERSION

# install elasticsearch plugins
RUN elasticsearch-plugin install analysis-kuromoji
RUN elasticsearch-plugin install analysis-icu
RUN elasticsearch-plugin install repository-gcs -b