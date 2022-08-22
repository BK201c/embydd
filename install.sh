#!/bin/bash
Version="4.7.6"
GITPATH=https://raw.githubusercontent.com/BK201c/embydd/master/patch
echo "For v-$Version"

echo "----------Start crack web core ------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ $GITPATH/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ $GITPATH/MediaBrowser.Model.dll
echo "----------Web Core crack-------done....."


rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ $GITPATH/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ $GITPATH/embypremiere.js
echo "-----------Web crack----done............"

rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ $GITPATH/Emby.Server.Implementations.dll
echo "-----------Server core crack----done....."

echo "--------------All Done-----enjoy........."
