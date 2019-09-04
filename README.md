[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/logos/metwork-white-logo-small.png)](http://www.metwork-framework.org)
# mfextaddon_vim

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/README.md)

**Status (master branch)**



[![Drone CI](http://metwork-framework.org:8000/api/badges/metwork-framework/mfextaddon_vim/status.svg)](http://metwork-framework.org:8000/metwork-framework/mfextaddon_vim)
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-en.svg)](https://gitter.im/metwork-framework/community-en?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-fr.svg)](https://gitter.im/metwork-framework/community-fr?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


[//]: # (TABLE_OF_CONTENTS_PLACEHOLDER)

## What is it?

This module is a [mfext](https://github.com/metwork-framework/mfext) add-on which
provides an opinionated VIM editor (and configuration) for use in [MetWork Framework](http://metwork-framework.org) env.

**WARNING: this addon is still experimental and not available for released or even master branches**

## Provided layers

This add-on provides three layers:

- `vim@mfext` (common files for next layers, not useful alone)
- `python3_vim@mfext` (VIM with Python3 support)
- `python2_vim@mfext` (VIM with Python2 support)

## Provides useful packages

So, to install this add-on, you have to install:

- `metwork-mfext-layer-python3_vim` package
- (and/or) `metwork-mfext-layer-python2_vim` package

## Quickstart

```console

$ ##### As root user #####

$ # We install the Python3 enabled version of VIM
$ yum -y install metwork-mfext-layer-python3_vim


$ ##### As lambda user #####

$ # We load the mfext environment (if it is not already done)
$ . /opt/metwork-mfext/share/interactive_profile

$ # We check that the layer is installed and loaded
$ layers |grep vim
- (*) python3_vim@mfext [/opt/metwork-mfext/opt/python3_vim]
- python2_vim@mfext [/opt/metwork-mfext/opt/python2_vim]
- (*) vim@mfext [/opt/metwork-mfext/opt/vim]

$ # note: we should have the `(*)` sign before each **loaded** layers
$ #       in that example, this is normal not to have the `(*)` sign before
$ #       python2_vim@mfext layer because both pythonX layers are mutually
$ #       exclusive

$ # Let's test
$ vim
```




## Contributing guide

See [CONTRIBUTING.md](CONTRIBUTING.md) file.



## Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.



## Sponsors

*(If you are officially paid to work on MetWork Framework, please contact us to add your company logo here!)*

[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/sponsors/meteofrance-small.jpeg)](http://www.meteofrance.com)
