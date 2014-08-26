#!/bin/bash
pushd /opt/aipo-tmp

tar -xvzf "downloaded.tar.gz"
pushd "aipo7020aja_linux"
tar -xvzf "aipo7020.tar.gz"
mv "./aipo/*" /opt/aipo/
popd

rm "downloaded.tar.gz"
rm -rf "aipo7020aja_linux"

pushd "/opt/aipo/bin"
sh installer.sh
popd

rm -rf /opt/aipo-tmp

popd