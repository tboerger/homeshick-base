Homesick
========

This package contains a set of configuration files to setup a system the
way i like it on Mac and Debian with the support of homesick.

Installation
------------

There are several pre-requisites needed before you install these package:

Debian:
    aptitude install git-core bash-completion curl ruby rubygems
    sudo gem update --system
    sudo gem install homesick pry git-up

Mac OSX:
    brew install git bash bash-completion curl
    sudo gem update --system
    sudo gem install homesick pry git-up

Initialization
--------------

Now you are ready to go! You can clone the code of this repository and
get it running with the following command:

    homesick clone tboerger/homesick && homesick symlink tboerger/homesick

That's all, it's time to start a new shell! To update scripts from the
repository use these commands:

    homesick pull tboerger/homesick && homesick symlink tboerger/homesick
