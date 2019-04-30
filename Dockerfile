FROM adoptopenjdk/openjdk11:latest AS builder

RUN jlink \
      --module-path /opt/java/jmods \
      --compress=2 \
      --add-modules java.base,java.logging \
      --no-header-files \
      --no-man-pages \
      --output /opt/jdk-mini && du -sh /opt/jdk-mini

FROM debian:9-slim

COPY --from=builder /opt/jdk-mini /opt/jdk-mini


# Set our java home and other useful envs

ENV JAVA_HOME=/opt/jdk-mini

ENV PATH="$PATH:$JAVA_HOME/bin"

