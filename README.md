# README

## Notic

Only for docker container created by dockerhub.io:emby/embyserver

## Quick Start

### 1. Run bash

#### backup

```bash
# enter host
wget --no-check-certificate -q -O backup.sh "https://raw.githubusercontent.com/BK201c/embydd/master/backup.sh" && sh backup.sh
```

#### creake

```bash
# enter docker container
sudo docker exec -it emby /bin/sh

# run
wget --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/BK201c/embydd/master/install.sh" && sh install.sh
```
