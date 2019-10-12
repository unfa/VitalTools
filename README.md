# VitalTools
Tools to help Vital synthesizer users and beta testers

## VitalMacroArdourFix.sh

### What is this

This script corrects automation mapping in an Ardour 5 project.
Vital pre-release 0.3.4 changes th automation mapping - if you've previously had Macro 1,2,3 or 4 automated in your session - this will break when you update Vital to version 0.3.4 (or newer).

This script will take your Ardour project and fix the automation assignements to make sure it works as epected.

The script onyl corrects Macro automation - nothing else is modified.

It may also not work correctly if you've made your project wihth a much older version on Vital.

But by doing some research and analyzing your `.ardour` fiels you will be able to modify this scrpt to your needs.

### Example

To fix your Ardour 5 project, copy this scipt into the project folder, so it's in the same directory as your `.ardour` files.

Make sure the script is exacutable:

    $ chmod +x VitalMacroArdourFix.sh
    
Now execute it passing two filenames. The first one is the project you want to fix, the second - is the new filename you want the fix to be created under.

    $ ./VitalMacroArdourFix.sh "Broken.ardour" "Fixed.ardour"

The script will make a copy of your original source file (it is never modified) and use `sed` to reaplace some strings.

Load the newly created project file in Ardour and your Macro automation should be fixed!
