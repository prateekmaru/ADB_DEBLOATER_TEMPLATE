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
    "com.google.android.feedback"
    "com.google.android.youtube"
    "com.miui.analytics"
    "com.miui.bugreport"
    "com.miui.msa.global"
    "com.miui.yellowpage"
    "com.xiaomi.joyose"
    "com.facebook.system"
    "com.facebook.appmanager"
    "com.facebook.services"
    "com.xiaomi.payment"
    "com.miui.miservice"
    "com.tencent.soter.soterserver"
    "com.miui.daemon"
    "com.miui.cloudbackup"
    "com.miui.mi.healthglobal"
    "com.android.wallpaper.livepicker"
    "com.miui.micloudsync"
    "com.opera.browser.afin"
    "com.google.android.apps.subscriptions.red"
    "com.google.android.apps.nbu.paisa.user"
    "com.xiaomi.glgm"
    "com.miui.cloudservice"
    "com.google.android.apps.youtube.music"
    "com.miui.notes"
    "com.miui.player"
    "com.google.android.apps.tachyon"
    "com.google.android.videos"
    "com.mi.globalminusscreen"
    "com.spotify.music"
    "com.snapchat.android"
    "com.phonepe.app"
    "com.netflix.mediaclient"
    "in.mohalla.video"
    "com.mi.global.shop"
    "com.linkedin.android"
    "com.facebook.katana"
    "com.soulcompany.bubbleshooter.relaxing"
    "in.amazon.mShop.android.shopping"
    "com.preff.kb.xm"
    "com.xiaomi.midrop"
 ) do (
    adb shell pm uninstall %%X
    adb shell pm uninstall --user 0 %%X
)
ECHO DONE....... ENJOY..........
pause