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
"com.android.chrome"
 ) do (
    adb shell pm uninstall %%X
    adb shell pm uninstall --user 0 %%X
)
ECHO DONE....... ENJOY..........
pause