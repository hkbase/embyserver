FROM debian:latest
ADD https://github.com/MediaBrowser/Emby.Releases/releases/download/4.6.7.0/emby-server-deb_4.6.7.0_armhf.deb /
RUN dpkg -i emby-server-deb_4.6.7.0_armhf.deb && systemctl stop emby-server
COPY startup.sh /startup.sh
COPY Emby.Web.dll /opt/emby-server/system/
COPY MediaBrowser.Model.dll /opt/emby-server/system/
COPY connectionmanager.js /opt/emby-server/system/dashboard-ui/bower_components/emby-apiclient/
COPY embypremiere.js /opt/emby-server/system/dashboard-ui/embypremiere/
COPY Emby.Server.Implementations.dll /opt/emby-server/system/
RUN systemctl start emby-server
CMD ["/startup.sh"]
