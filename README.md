# Media server docker containers
This will install sickbeard, sabnzbd, couchpotato, deluge and headphones.
WARNING: the clean.sh, stop.sh and update.sh scripts will remove all non running containers. If you want to change this functionality, edit the clean.sh script to only remove the media containers and images.

## Data and Storage directories:
You will need to modify the start.sh file to point to your data and storage dirs.
These are the directories on your host server that you want to expose to the docker containers.
If you want to expose a nas drive you can mount it on your host server and expose it through one of these constants.

This will give you a way to save state outside of the containers themselves, so that config and db files will persist. You can also setup a cronjob to backup these folders to the cloud incase of a drive failure.

* DATADIR=(dir where all the config files and db files will be kept)
* STORAGEDIR=(dir where all processed downloads will be saved)
* TMPDIR=(dir where incomplete downloads will be saved)
* DLDIR=(dir where unprocessed downloads will be saved)

To build all the media containers for the first time run:

`sudo ./build.sh`

To run all the media containers after building:

`sudo ./start.sh`

To stop and remove all the media containers:

`sudo ./stop.sh`

To pull the latest versions of these services run the update.sh script it will rebuild and restart the docker containers.

`sudo ./update.sh`

To setup autostart on ubuntu based systems run:

`sudo ./autostart.sh`
