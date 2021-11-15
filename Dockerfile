FROM bitnami/tomcat:8.5
COPY target/vireo-4.1.0.war /opt/bitnami/tomcat/webapps_default/vireo.war
