# An easy apt-repository-server to install Your software via "apt install"

This repository provides a simple docker image to distribute Your own *.deb files in Your private network.
It bypasses any type of security (signing), because this is a mess to setup ... and therefor should NOT be used in any public area.

## Installation

1. clone this repository
2. place Your *.deb files in folder **debfiles** (in example build one for a [python package](https://github.com/Entwicklungsleiter/flask-restx-deb-package))
3. run script **init_or_update.sh** once to create Packages.gz

```shell
./init_or_update.sh # in top folder, no sudo
```

4. start the docker container: 

```shell 
sudo docker-compose up --build -d
sudo docker-compose ps # check if running
```

The last two items can be exchanged. You can run script "init_or_update.sh" whenever You want to create a new Packages.gz ... i.e. when You add a new deb file.

The repository should be available through Your browser at **http://\<Your local IP address\>:8083/** now.

## Usage (on PC to install software from apt repository):

First edit file my.apt-sources.list and replace IP-Adress with the URL / IP of the host where You run the docker container.
Then add the new repo to Your local Ubuntu installation.

```shell
sudo cp my.apt-sources.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install ...
```

I hope this helps You!
