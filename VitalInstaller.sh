#!/bin/bash


if [[ ! -e "./VitalInstaller.zip" ]]; then
    echo "There's no VitalInstaller.zip in the current directory! Exiting"
    exit
fi

unzip VitalInstaller.zip

rsync -av --delete ./VitalBinaries/Vital.lv2 /usr/lib/lv2/Vital.lv2
rsync -av --delete ./VitalBinaries/VitalFX.lv2 /usr/lib/lv2/VitalFX.lv2
rsync -av --delete ./VitalBinaries/content /usr/share/Vital
rsync -av ./VitalBinaries/vital /usr/bin/vital

rm -rf ./VitalBinaries

echo
echo All done!
