FROM windev/webdev-base:FR260101d

COPY TEST.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/TEST

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/TEST/