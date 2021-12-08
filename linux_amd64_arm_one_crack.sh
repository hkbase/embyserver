echo "Emby-server一键破解脚本，补丁用于emby-server-4.6.7.0版本,适用于ubuntu、debian x64和arm平台"
echo "-------------------web端破解-------------------"
rm -f /opt/emby-server/system/Emby.Web.dll
cp Emby.Web.dll /opt/emby-server/system/
rm -f /opt/emby-server/system/MediaBrowser.Model.dll
cp MediaBrowser.Model.dll /opt/emby-server/system/
echo "核心破解完成..."
rm -f /opt/emby-server/system/dashboard-ui/bower_components/emby-apiclient/connectionmanager.js
cp connectionmanager.js /opt/emby-server/system/dashboard-ui/bower_components/emby-apiclient/
rm -f /opt/emby-server/system/dashboard-ui/embypremiere/embypremiere.js
cp embypremiere.js /opt/emby-server/system/dashboard-ui/embypremiere/
echo "web破解完成..."
rm -f /opt/emby-server/system/Emby.Server.Implementations.dll
cp Emby.Server.Implementations.dll /opt/emby-server/system/
echo "Implementations替换认证..."
echo "完成..."
