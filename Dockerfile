FROM anapsix/alpine-java
COPY little-proxy-main/build/distributions/little-proxy-main-1.0-SNAPSHOT.zip /opt/little-proxy-main/
RUN cd /opt/little-proxy-main/ && unzip -q little-proxy-main-1.0-SNAPSHOT.zip

EXPOSE 3128
WORKDIR /opt/little-proxy-main/little-proxy-main-1.0-SNAPSHOT/
CMD java  -jar /opt/little-proxy-main/little-proxy-main-1.0-SNAPSHOT/little-proxy-main-1.0-SNAPSHOT.jar


