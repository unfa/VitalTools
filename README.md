# VitalTools
Tools to help Vital synthesizer users and beta testers

## VitalMacroArdourFix.sh

### What is this

This script corrects automation mapping in an Ardour 5 project.
Vital pre-release 0.3.4 changes the automation mapping - if you've previously had Macro 1,2,3 or 4 automated in your session - this will break when you update Vital to version 0.3.4 (or newer).

Thsi is because the parameters are numbered, and there were new parameteres added, so the Macro slots were shifted formard.
This script will take your Ardour project and fix the automation assignements to make sure it works as expected.
The script only corrects Macro automation - nothing else is modified.

It may also not work correctly if you've made your project with a much older version on Vital.

But by doing some research and analyzing your `.ardour` files you will be able to modify this script to your needs.

### Example

To fix your Ardour 5 project, copy this scipt into the project folder, so it's in the same directory as your `.ardour` files.

Make sure the script is exacutable:

    $ chmod +x VitalMacroArdourFix.sh
    
Now execute it passing two filenames. The first one is the project you want to fix, the second - is the new filename you want the fix to be created under.

    $ ./VitalMacroArdourFix.sh "Broken.ardour" "Fixed.ardour"

The script will make a copy of your original source file (it is never modified) and use `sed` to replace some strings.

Load the newly created project file in Ardour and your Macro automation should be fixed!

## VitalInstaller.sh

### What is this

This script will copy the Vital files to all the right places in your system.

### Dependancies

This script depends on the `unzip` program. Make sure you have it installed before attempting to use it!

### Example

Place the script in a directory where the VitalInstaller.zip file is located. That file is the Linux build you've downloaded.

```
$ ls
VitalInstaller.sh  VitalInstaller.zip
```

Now simply run the script as root:

```
$ sudo ./VitalInstaller.sh
```

The script will:
1. unzip the archive
1. rsync the plug-in files to /usr/lib/lv2
1. rsync the binary to /usr/bin
1. rsync the data fiels to /usr/share
1. clean up removing the unzipped archive, leaving everything as before

Warning! This script will first delete all existing files in the `/usr/lib/lv2/Vital.lv2`, `/usr/lib/lv2/VitalFX.lv2` and `/usr/share/Vital` directories - if you've put some extra files there - back them up, or remove the `--delete` parameters from the rsync commands before running the script, or your files will be lost!
