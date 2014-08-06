Studio-se-master
==========

Master repos using gitslave for aggregating the full Talend Studio open source repositories

This folder is a GitSlave root folder.
It is a simple git repo but allows working with all Talend Studio open source repositories as slaves.

Install GitSlave
================
GitSlave is the tool you can use to perfom multi-repo command, in order to use it to its full potential please
install : 
* perl 
* clone this repostitory locally if not already done.
* move the folder tools/gitslave-2.0.2 to you own user folders.
* Then you can make an alias to the main script called "gits" (use gits_for_mac if you are on a mac).

How to use it
-------------
The list of repositories handled by this gitslave repo can be found in the file .gitslave
All Gitslave command are available hre : http://gitslave.sourceforge.net/gits-man-page.html

if you want to dowload (clone) all slave studio repositories, use the command
        
        gits populate --with-ifpresent

should you want to download a set of slave repositories, use

         gits populate <name_of_the_repos1> <name_of_the_repos2>


Build The Open Source Studio
================
All the following assumes that Maven is installed on you machine.
First if you have never built any Studio artifacts on your machine you need to build the parent pom.xml
so please do

```
cd talend.studio.parent.pom
mvn clean install
```

then go back to the root of this repos and launch the same maven command to build all Studio artifacts.

```
mvn clean install
```
