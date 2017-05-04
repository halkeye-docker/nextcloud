FROM nextcloud
MAINTAINER Gavin Mogan "gavin@gavinmogan.com"

# Install all the plugins
RUN mkdir -p /usr/src/nextcloud/apps/spreed \
    && curl -L https://github.com/nextcloud/spreed/releases/download/v2.0.0/spreed-2.0.0.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/spreed
RUN mkdir -p /usr/src/nextcloud/apps/deck \
    && curl -L https://github.com/nextcloud/deck/releases/download/v0.1.4/deck.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/deck
RUN mkdir -p /usr/src/nextcloud/apps/notes \
    && curl -L https://github.com/nextcloud/notes/releases/download/v2.2.0/notes.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/notes
RUN mkdir -p /usr/src/nextcloud/apps/contacts \
    && curl -L https://github.com/nextcloud/contacts/releases/download/v1.5.3/contacts.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/contacts
RUN mkdir -p /usr/src/nextcloud/apps/twofactor_totp \
    && curl -L https://github.com/nextcloud/twofactor_totp/releases/download/1.3.0/twofactor_totp.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/twofactor_totp
RUN mkdir -p /usr/src/nextcloud/apps/calendar \
    && curl -L https://github.com/nextcloud/calendar/releases/download/v1.5.2/calendar.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/calendar
RUN mkdir -p /usr/src/nextcloud/apps/tasks \
    && curl -L https://github.com/nextcloud/tasks/releases/download/v0.9.5/tasks.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/tasks
RUN mkdir -p /usr/src/nextcloud/apps/files_opds \
    && curl -L https://github.com/Yetangitu/owncloud-apps/raw/master/dist/files_opds-0.8.2.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/files_opds
RUN mkdir -p /usr/src/nextcloud/apps/files_reader \
    && curl -L https://github.com/Yetangitu/owncloud-apps/raw/master/dist/files_reader-1.0.4.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/files_reader
RUN mkdir -p /usr/src/nextcloud/apps/qownnotesapi \
    && curl -L https://github.com/pbek/qownnotesapi/releases/download/17.3.0/qownnotesapi.tar.gz | tar xz --strip-components=1 -C /usr/src/nextcloud/apps/qownnotesapi
VOLUME ["/usr/src/nextcloud/data", "/usr/src/nextcloud/config", "/tmp/mysql.sock", "/var/run/mysqld/mysqld.sock"]
EXPOSE 80
