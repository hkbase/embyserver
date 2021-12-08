FROM debian:latest
add https://github.com/MediaBrowser/Emby.Releases/releases/download/4.6.7.0/emby-server-deb_4.6.7.0_armhf.deb /
RUN dpkg -i emby-server-deb_4.6.7.0_armhf.deb && systemctl stop emby-server
COPY startup.sh /startup.sh

RUN systemctl start emby-server
CMD ["/startup.sh"]
