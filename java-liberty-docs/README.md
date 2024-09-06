# WebSphere Liberty Docs

## IBM Base Website
https://www.ibm.com/products/cloud-pak-for-applications/liberty?utm_content=SRCWW&p1=Search&p4=43700074488257817&p5=e&p9=58700008200776381&gad_source=1&gclid=Cj0KCQjww5u2BhDeARIsALBuLnM657GiBlh97zNU8lJIs_nWFPkQOqNKxsMygodslI-97KL7Hpz0CsgaAt0sEALw_wcB&gclsrc=aw.ds

## IBM WebSphere Liberty Docs
https://www.ibm.com/docs/en/was-liberty

## IBM Developer - Modernizing applications to use WebSphere Liberty
https://developer.ibm.com/learningpaths/app-mod-liberty/

## IBM WebSphere Liberty - Base Application Server Docs
https://www.ibm.com/docs/en/was-liberty/base?topic=liberty-overview

## IBM WebSphere Liberty K8S Operator
https://www.ibm.com/docs/en/was-liberty/base?topic=container-running-websphere-liberty-operator

## Open Liberty Guides
https://openliberty.io/guides/

## Source-to-Image (S2I) Open Liberty Workshop 
https://ibm.github.io/s2i-open-liberty-workshop/
https://github.com/WASdev/websphere-liberty-s2i

## Open Liberty IBM Developer Guide
https://developer.ibm.com/articles/why-cloud-native-java-developers-love-liberty/?mhsrc=ibmsearch_a&mhq=Liberty

## Open Liberty Maven Plugin
https://github.com/OpenLiberty/ci.maven#goals

## Tips for Docker files
https://developers.redhat.com/articles/2023/03/23/10-tips-writing-secure-maintainable-dockerfiles#



# WebSphere Liberty Configuration 

## Administering Liberty

A server configuration consists of a server.xml file, a bootstrap.properties file, and any optional files that are included by the two main configuration files.

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=administering-liberty

### server.xml file
You specify the features you need, along with any additions or overrides to the system default settings, in a server.xml file. You might choose to structure your configuration into a number of separate files that are linked to the parent server.xml file by using an include syntax. At server startup, or when the user configuration files are changed, the kernel configuration management parses your configuration and applies it over the system default settings. The set of configuration properties that belongs to each service is injected into the service each time the configuration is updated. As the following diagram shows, The configuration administrator reads the default configuration from bundles in the kernel, applies the user-specified configuration over this default configuration, then injects the merged configuration into feature bundles.

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=overview-architecture

#### Include external XML files in the server.xml file

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=al-including-configuration-information-from-external-xml-files-in-serverxml-file



## Setting up Liberty

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=setting-up-liberty

### Liberty: Directory locations and properties

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=liberty-directory-locations-properties

### Liberty Bootstrap properties

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=liberty-specifying-bootstrap-properties

### Customizing the Liberty environment

**Link:** https://www.ibm.com/docs/en/was-liberty/base?topic=liberty-customizing-environment