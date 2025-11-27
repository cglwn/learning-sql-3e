FROM mysql:8.0

RUN microdnf update && microdnf install -y curl gzip tar && microdnf clean all

WORKDIR /tmp
RUN curl -L https://downloads.mysql.com/docs/sakila-db.tar.gz -o sakila.tar.gz \
    && tar -xzvf sakila.tar.gz \
    && mv sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d/01-sakila-schema.sql \
    && mv sakila-db/sakila-data.sql /docker-entrypoint-initdb.d/02-sakila-data.sql \
    && rm -rf sakila-db sakila.tar.gz

ENV MYSQL_DATABASE=sakila

EXPOSE 3306

HEALTHCHECK --interval=5s --timeout=5s --retries=10 CMD mysqladmin ping -h localhost -u root -p$MYSQL_ROOT_PASSWORD || exit 1
