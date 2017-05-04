FROM mongo:3.2

# Create data directory and switch to it
RUN mkdir /import-data
WORKDIR /import-data

# Copy files to import into the container
COPY ./import.sh /import-data
COPY files_to_import /import-data

CMD ["/bin/bash", "./import.sh"]
