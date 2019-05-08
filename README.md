[![Docker Pulls](https://img.shields.io/docker/pulls/aint/javabase.svg)](https://hub.docker.com/r/aint/javabase)

# About

This image contains a shrinked JDK 11 and is based on Alpine and Debian, which makes the download size to be around 35-50Mb.

[![](https://images.microbadger.com/badges/image/aint/javabase:alpine.svg)](https://microbadger.com/images/aint/javabase:alpine)
Alpine based image

[![](https://images.microbadger.com/badges/image/aint/javabase.svg)](https://microbadger.com/images/aint/javabase)
Debian based image

Includes the following  Java modules:

- java.base
- java.logging
- java.sql
- java.desktop - `java.beans.IntrospectionException`
- java.naming - `javax.naming.NamingException`
- java.security.jgss - `org.ietf.jgss.GSSException`
- java.management - `javax.management.MBeanServer`
- java.instrument - `java.lang.instrument.IllegalClassFormatException`
- jdk.unsupported - `org.springframework.aop.framework.AopConfigException`: Unable to instantiate proxy using Objenesis, and regular proxy instantiation via default constructor fails as well

# Usage Example

To get the Debain based image:

```
$ docker pull aint/javabase
```

To get the Alpine based image:

```
$ docker pull aint/javabase:alpine
```

This image is intended to be a base image for your projects, so you may use it like this:

```
FROM aint/javabase

COPY target/spring-app.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
```

```
$ docker build -t spring_app .
```
