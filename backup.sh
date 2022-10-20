#!/bin/bash
VERSION="4.7.8"
SOURCE_DIR="/volume1/docker/embyback"
echo "For v-${VERSION}"

mkdir ${SOURCE_DIR}

echo "----------Start backup web core ------------------"
docker cp emby:/system/Emby.Web.dll ${SOURCE_DIR}
docker cp emby:/system/MediaBrowser.Model.dll ${SOURCE_DIR}
echo "----------Web Core backup-------done....."


docker cp emby:/system/dashboard-ui/modules/emby-apiclient/connectionmanager.js ${SOURCE_DIR}
docker cp emby:/system/dashboard-ui/embypremiere/embypremiere.js ${SOURCE_DIR}
echo "-----------Web backup----done............"

docker cp emby:/system/Emby.Server.Implementations.dll ${SOURCE_DIR}
echo "-----------Server core backup----done....."

echo "--------------All Done-----enjoy........."