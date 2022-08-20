#!/bin/bash
#github path
GITPATH=https://raw.githubusercontent.com/BK201c/embydd/master/patch
echo "docker一键破解脚本，适4.7.6版本"
echo "-------------------web端破解-------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ $GITPATH/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ $GITPATH/MediaBrowser.Model.dll
echo "核心破解完成..."
rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ $GITPATH/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ $GITPATH/embypremiere.js
echo "web破解完成..."
rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ $GITPATH/Emby.Server.Implementations.dll
echo "Implementations替换认证..."

echo "完成替换..."
