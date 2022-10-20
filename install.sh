#!/bin/bash
VERSION="4.7.8"
SOURCE_DIR="https://raw.githubusercontent.com/BK201c/embydd/master/patch"
echo "For v-${VERSION}"

echo "----------Start crack web core ------------------"
rm -f /system/Emby.Web.dll
wget -P /system/ ${SOURCE_DIR}/Emby.Web.dll
rm -f /system/MediaBrowser.Model.dll
wget -P /system/ ${SOURCE_DIR}/MediaBrowser.Model.dll
echo "----------Web Core crack-------done....."


rm -f /system/dashboard-ui/modules/emby-apiclient/connectionmanager.js
wget -P /system/dashboard-ui/modules/emby-apiclient/ ${SOURCE_DIR}/connectionmanager.js
rm -f /system/dashboard-ui/embypremiere/embypremiere.js
wget -P /system/dashboard-ui/embypremiere/ ${SOURCE_DIR}/embypremiere.js
echo "-----------Web crack----done............"

rm -f /system/Emby.Server.Implementations.dll
wget -P /system/ ${SOURCE_DIR}/Emby.Server.Implementations.dll
echo "-----------Server core crack----done....."

echo "--------------All Done-----enjoy........."
