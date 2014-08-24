#!/bin/bash
pushd /opt

tar -xvzf "downloaded.tar.gz"
pushd "aipo7020aja_linux"
tar -xvzf "aipo7020.tar.gz"
mv "./aipo" /opt
popd

rm "downloaded.tar.gz"
rm -rf "aipo7020aja_linux"

tree .

pushd "./aipo/bin"
sh installer.sh
popd

popd