<font color='red'>
<i>Warning: This page contains configuration instructions for advanced IPT users only</i>
</font>

# How To Add a New User ID Directory



## Introduction

Since IPT v2.2 the IPT ships with 4 user directories to choose from when entering a user ID for any contact, creator, metadata provider, associated party, or project personnel. Those directories are:
  * http://orcid.org/ (ORCID)
  * http://www.researcherid.com/rid/ (ResearcherID)
  * http://scholar.google.com/citations?user= (Google Scholar)
  * https://www.linkedin.com/profile/view?id= (LinkedIn)

After having selected a user directory, IPT users enter a conjoining user ID. The combination of the two is used to form a link to a user profile page, for example:

  * http://orcid.org/0000-0002-1825-0097
  * http://www.researcherid.com/rid/A-1009-2008
  * https://scholar.google.com/citations?user=drZVfmcAAAAJ
  * https://www.linkedin.com/profile/view?id=190869005

The list of user directories can be modified, however, which is useful for communities that rely on other directories.

The steps below explain how to configure the IPT with another user directory to choose from.

## Instructions

Locate the UserDirectories.properties file e.g. /tomcat7/webapps/ipt/WEB-INF/classes/org/gbif/metadata/eml/licenses.properties. Open the file in a text editor, and do the following:
  1. Add a new property defining the user directory using the following format:
```
URL=URL
# For example:
http\://orcid.org/=http://orcid.org/
```
  1. Double check i) the colon in the property key is escaped by a backwards slash, ii) both the key and value are equal, with the exception of the escape character in the key
  1. Backup the UserDirectories.properties file, since it will get overwritten the next time you upgrade your IPT
  1. Restart your servlet container (e.g. Tomcat) so that the new configuration takes effect