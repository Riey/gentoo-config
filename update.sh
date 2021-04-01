#!/bin/bash

sync=(
    "env"
    "make.conf"
    "package.accept_keywords"
    "package.license"
    "package.use"
)

for item in ${sync[@]}
do
    echo Copying $item
    cp -R /etc/portage/$item .
done

echo Copying kernel config
cp /usr/src/linux/.config ./kernel_config

