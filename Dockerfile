FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.1
LABEL Author="Hakim Boukhatem"
LABEL maintainer="PXL APPS <hakim.boukhatem@pxlapps.com>"

RUN bin/elasticsearch-plugin remove --purge x-pack
RUN rm -rf /usr/share/elasticsearch/plugins/x-pack
RUN rm -rf /usr/share/elasticsearch/config/x-pack
RUN /usr/bin/sed -i '/xpack/d' /usr/share/elasticsearch/config/elasticsearch.yml
