#!/bin/sh

cd ~
cd /tmp
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/bubupnpV8.tgz
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/playlist.tgz
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/server_config.tgz

tar -xzvf /tmp/bubupnpV8.tgz -C /srv/http/
tar -xzvf /tmp/playlist.tgz -C /srv/http/data/playlists/
tar -xzvf /tmp/server_config.tgz -C /mnt/MPD/SD/


# wget -O - https://raw.githubusercontent.com/lovehifi/raudiobub/main/install.sh | sh
