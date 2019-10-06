# egeoffrey-database

This is an eGeoffrey database package.

## Description

Runs eGeoffrey database for storing sensors' information.

## Install

To install this package, run the following command from within your eGeoffrey installation directory:
```
egeoffrey-cli install egeoffrey-database
```
After the installation, remember to run also `egeoffrey-cli start` to ensure the Docker image of the package is effectively downloaded and started.
To validate the installation, go and visit the *'eGeoffrey Admin'* / *'Packages'* page of your eGeoffrey instance. All the modules, default configuration files and out-of-the-box contents if any will be automatically deployed and made available.
## Contribute

If you are the author of this package, simply clone the repository, apply any change you would need and run the following command from within this package's directory to commit your changes and automatically push them to Github:
```
egeoffrey-cli commit "<comment>"
```
After taking this action, remember you still need to build (see below) the package (e.g. the Docker image) to make it available for installation.

If you are a user willing to contribute to somebody's else package, submit your PR (Pull Request); the author will take care of validating your contributation, merging the new content and building a new version.

## Build

Building is required only if you are the author of the package. To build a Docker image and automatically push it to [Docker Hub](https://hub.docker.com/r/egeoffrey/egeoffrey-database), run the following command from within this package's directory:
```
egeoffrey-cli build egeoffrey-database <amd64|arm>
```
To function properly, when running in a Docker container, the following additional configuration settings has to be added to e.g. your docker-compose.yml file (when installing through egeoffrey-cli, this is not needed since done automatically upon installation):
```
ports:
- 6379:6379
volumes:
- ./data/database/data:/database/data
```

## Uninstall

To uninstall this package, run the following command from within your eGeoffrey installation directory:
```
egeoffrey-cli uninstall egeoffrey-database
```
Remember to run also `egeoffrey-cli start` to ensure the changes are correctly applied.
## Tags

The following tags are associated to this package:
```
database
```

## Version

The version of this egeoffrey-database is 1.0-13 on the master branch.
