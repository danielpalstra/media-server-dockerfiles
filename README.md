###Media server docker containers

* This will install sickbeard, sabnzbd, couchpotato, deluge and headphones.

####You will need to modify the start.sh file to point to your data and storage dirs:
####Data and Storage directories:
* DATADIR=(dir where all the config files and db files will be kept)
* STORAGEDIR=(dir where all processed downloads will be saved)
* TMPDIR=(dir where incomplete downloads will be saved)
* DLDIR=(dir where unprocessed downloads will be saved)
* 
####To pull the latest versions of these services run the update.sh script it will rebuild and restart the docker containers.
