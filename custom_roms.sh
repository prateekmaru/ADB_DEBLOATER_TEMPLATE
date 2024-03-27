#!/bin/bash

echo "==============================================================================="
echo "ENTER PLATFORM TOOLS FOLDER PATH, HIT ENTER IF YOU SET AS ENV_VARIABLE :"
echo "==============================================================================="
read -p "Press Anykey=" Y
cd "$Y" || exit
adb kill-server
adb start-server
adb devices
adb root
echo "PRESS ANY KEY TO START DE-BLOATING..........."
for X in \
    "com.android.stk" \
    "org.lineageos.audiofx" \
    "com.android.calculator2" \
    "org.lineageos.jelly" \
    "org.lineageos.etar" \
    "com.android.gallery3d" \
    "org.lineageos.eleven" \
    "org.omnirom.logcat" \
    "org.chromium.chrome" \
    "com.android.chrome"
do
    adb shell pm uninstall "$X"
    adb shell pm uninstall --user 0 "$X"
done
echo "Debloated...... Done......."