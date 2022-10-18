FROM postgres:9.5.25-alpine
USER postgres
RUN whoami
ADD ./docker-entrypoint-initdb.d/init-system-db.sh /docker-entrypoint-initdb.d/
COPY ./data /var/data
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]