#!/bin/sh

cd ~
cd /tmp
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/bubupnpV8.tgz
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/playlist.tgz
wget https://raw.githubusercontent.com/lovehifi/raudiobub/main/server_config.tgz

tar -xzvf /tmp/bubupnpV8.tgz -C /srv/http/
tar -xzvf /tmp/playlist.tgz -C /srv/http/data/playlists/
mkdir -p /mnt/MPD/SD
tar -xzvf /tmp/server_config.tgz -C /mnt/MPD/SD/

# Check if any .tgz files exist in /root/
if ls /root/*.tgz 1> /dev/null 2>&1; then
  # Remove each .tgz file
  for file in /root/*.tgz; do
    rm -f "$file"
  done
fi

# wget -O - https://raw.githubusercontent.com/lovehifi/raudiobub/main/install.sh | sh
