FROM docker.elastic.co/elasticsearch/elasticsearch:5.3.0

RUN mkdir plugins/ik \
    && wget -P plugins/ik https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.3.0/elasticsearch-analysis-ik-5.3.0.zip \
    && unzip -d plugins/ik/ plugins/ik/elasticsearch-analysis-ik-5.3.0.zip \
    && rm plugins/ik/elasticsearch-analysis-ik-5.3.0.zip

EXPOSE 9200 9300
