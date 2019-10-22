#!/bin/bash

rsync -av --delete ./VitalBinaries/Vital.lv2 /usr/lib/lv2/Vital.lv2
rsync -av --delete ./VitalBinaries/VitalFX.lv2 /usr/lib/lv2/VitalFX.lv2
rsync -av --delete ./VitalBinaries/content /usr/share/Vital
rsync -av ./VitalBinaries/vital /usr/bin/vital


