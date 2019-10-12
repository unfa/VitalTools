#!/bin/bash

cp "$1" "$2"

sed -i 's/automation-id="parameter-197"/VITALMACROARDOURFIX/' "$2"
sed -i 's/automation-id="parameter-225"/automation-id="parameter-197"/' "$2"
sed -i 's/VITALMACROARDOURFIX/automation-id="parameter-225"/' "$2"

sed -i 's/automation-id="parameter-198"/VITALMACROARDOURFIX/' "$2"
sed -i 's/automation-id="parameter-226"/automation-id="parameter-198"/' "$2"
sed -i 's/VITALMACROARDOURFIX/automation-id="parameter-226"/' "$2"

sed -i 's/automation-id="parameter-199"/VITALMACROARDOURFIX/' "$2"
sed -i 's/automation-id="parameter-227"/automation-id="parameter-199"/' "$2"
sed -i 's/VITALMACROARDOURFIX/automation-id="parameter-227"/' "$2"

sed -i 's/automation-id="parameter-200"/VITALMACROARDOURFIX/' "$2"
sed -i 's/automation-id="parameter-228"/automation-id="parameter-200"/' "$2"
sed -i 's/VITALMACROARDOURFIX/automation-id="parameter-228"/' "$2"
