FROM centos:7
MAINTAINER Erik Jacobs <erikmjacobs@gmail.com>
RUN yum -y install java unzip
RUN curl -L "http://www.eclipse.org/downloads/download.php?file=/orion/drops/R-11.0-201602232219/eclipse-orion-11.0-linux.gtk.x86_64.zip&r=1" \
    -o /tmp/orion-11.0-linux.gtk.x86_64.zip \
    && cd /usr/share \
    && unzip /tmp/orion-11.0-linux.gtk.x86_64.zip
CMD ["/usr/share/eclipse/orion"]
EXPOSE 8080
