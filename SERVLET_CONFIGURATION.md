# How to Set Up Development Environment for Java Servlets in Eclipse IDE

## Prerequisites
1. Latest version of [Eclipse IDE](https://eclipse.org/ide/)
2. [Apache Tomcat version 8.0.X](http://tomcat.apache.org/download-80.cgi)
3. [JBoss Tools](http://stackoverflow.com/questions/31245959/how-to-add-jboss-server-in-eclipse) for Eclipse IDE

## Tomcat
1. Download [Apache Tomcat](http://tomcat.apache.org/download-80.cgi) from the provided link and extract the folder
2. Place extracted folder in an easily accessible location on your hard drive

## Initial Creation
1. Once Eclipse is installed and a workspace is created click `File > New > Dynamic Web Project`
2. Name your project and use the default `Project Location`
3. Click `New Runtime` under `Target Runtime`
  1. Expand the `Apache` folder and select `Apache Tomcat v8.0`; Click `Next`
  2. Click `Browse` and select the location of the unzipped Tomcat folder
  3. Keep all other defaults
  4. Click `Finish`
4. Click `Next` for the source folder configuration page (unneeded)
5. Click `Next` and check the `Generate web.xml deployment descriptor` box
6. Click `Finish`
7. Change the view to Java EE by selecting the `Java EE` button in the upper right corner

## Package Structure

## Build Path for Downloaded External Libraries
