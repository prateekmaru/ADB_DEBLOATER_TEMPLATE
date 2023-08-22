@echo off
ECHO ===============================================================================
set /p Y= ENTER PLATFORM TOOLS FOLDER PATH, HIT ENTER IF YOU SET AS ENV_VARIABLE :
ECHO ===============================================================================
cd %Y%
adb kill-server
adb start-server
adb devices
ECHO PRESS ANY KEY TO START DE-BLOATING...........
pause
for %%X in (
    "com.android.stk"
    "org.lineageos.audiofx"
    "com.android.calculator2"
    "org.lineageos.aperture"
    "org.lineageos.jelly"
    "org.lineageos.etar"
    "com.android.contacts"
    "com.android.gallery3d"
    "org.lineageos.eleven"
 ) do (
    adb shell pm uninstall %%X
    adb shell pm uninstall --user 0 %%X
)
ECHO DONE....... ENJOY..........
pause