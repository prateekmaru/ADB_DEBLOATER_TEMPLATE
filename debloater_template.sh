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
        "org.chromium.chrome" \
        "com.android.chrome" \
        "com.android.stk" \
        "com.google.android.feedback" \
        "com.google.android.youtube" \
        "com.miui.analytics" \
        "com.miui.bugreport" \
        "com.miui.msa.global" \
        "com.miui.yellowpage" \
        "com.xiaomi.joyose" \
        "com.facebook.system" \
        "com.facebook.appmanager" \
        "com.facebook.services" \
        "com.xiaomi.payment" \
        "com.tencent.soter.soterserver" \
        "com.miui.daemon" \
        "com.miui.cloudbackup" \
        "com.miui.mi.healthglobal" \
        "com.android.wallpaper.livepicker" \
        "com.miui.micloudsync" \
        "com.opera.browser.afin" \
        "com.google.android.apps.subscriptions.red" \
        "com.google.android.apps.nbu.paisa.user" \
        "com.xiaomi.glgm" \
        "com.miui.cloudservice" \
        "com.google.android.apps.youtube.music" \
        "com.miui.player" \
        "com.google.android.apps.tachyon" \
        "com.google.android.videos" \
        "com.spotify.music" \
        "com.snapchat.android" \
        "com.phonepe.app" \
        "com.netflix.mediaclient" \
        "in.mohalla.video" \
        "com.mi.global.shop" \
        "com.linkedin.android" \
        "com.facebook.katana" \
        "com.soulcompany.bubbleshooter.relaxing" \
        "in.amazon.mShop.android.shopping" \
        "com.preff.kb.xm" \
        "com.xiaomi.midrop" \
        "com.mipay.wallet.in" \
        "com.micredit.in" \
        "com.miui.player" \
        "com.nf.snake" \
        "com.google.android.apps.podcasts" \
        "com.google.android.apps.magazines" \
        "com.jewelsblast.ivygames.Adventure.free" \
        "com.logame.eliminateintruder3d" \
        "com.block.puzzle.game.hippo.mi" \
        "com.mintgames.wordtrip" \
        "com.mintgames.triplecrush.tile.fun" \
        "com.crazy.juicer.xm" \
        "com.sukhavati.gotoplaying.bubble.BubbleShooter.mint" \
        "com.block.juggle" \
        "com.xiaomi.glgm" \
        "com.xiaomi.smarthome" \
        "com.mi.global.shop" \
        "com.opera.browser.afin" \
        "com.fugo.wow" \
        "com.google.android.apps.subscriptions.red" \
        "com.miui.compass" \
        "com.xiaomi.smarthome" \
        "com.duokan.phone.remotecontroller" \
        "com.mi.global.shop" \
        "com.miui.player" \
        "com.xiaomi.midrop" \
        "com.miui.weather2" \
        "com.miui.weather" \
        "com.xiaomi.mi_care" \
        "com.mi.globalbrowser" \
        "com.mi.health" \
        "com.android.email" \
        "com.miui.huanji" \
        "com.miui.videoplayer" \
        "com.miui.fm" \
        "com.miui.miservice" \
        "com.miui.personalassistant" \
        "org.omnirom.logcat" \
	"com.xiaomi.midrop" \
	"com.mi.globalbrowser" \
	"com.mi.global.bbs" \
	"com.miui.videoplayer" \
	"com.miui.player" \
	"com.google.android.music" \
	"com.amazon.avod.thirdpartyclient"
do
    adb shell pm uninstall "$X"
    adb shell pm uninstall --user 0 "$X"
done
echo "Debloated...... Done......."