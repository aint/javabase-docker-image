[![](https://images.microbadger.com/badges/image/aint/javabase.svg)](https://microbadger.com/images/aint/javabase)
[![Docker Pulls](https://img.shields.io/docker/pulls/aint/javabase.svg)](https://hub.docker.com/r/aint/javabase)


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
