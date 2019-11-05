[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/logos/metwork-white-logo-small.png)](http://www.metwork-framework.org)
#  mfextaddon_vim

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/README.md)

**Status (master branch)**



[![Drone CI](http://metwork-framework.org:8000/api/badges/metwork-framework/mfextaddon_vim/status.svg)](http://metwork-framework.org:8000/metwork-framework/mfextaddon_vim)
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-en.svg)](https://gitter.im/metwork-framework/community-en?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-fr.svg)](https://gitter.im/metwork-framework/community-fr?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


**Table of contents**

* [1\. What is it?](#1-what-is-it)
* [2\. Provided layers](#2-provided-layers)
* [3\. Provides useful packages](#3-provides-useful-packages)
* [4\. Quickstart](#4-quickstart)
* [5\. Full list of components](#5-full-list-of-components)
* [6\. Reference documentation](#6-reference-documentation)
* [7\. Installation guide](#7-installation-guide)
* [8\. Configuration guide](#8-configuration-guide)
* [9\. Contributing guide](#9-contributing-guide)
* [10\. Code of Conduct](#10-code-of-conduct)
* [11\. Sponsors](#11-sponsors)



## 1. What is it?

This module is a [mfext](https://github.com/metwork-framework/mfext) add-on which
provides an opinionated VIM editor (and configuration) for use in [MetWork Framework](http://metwork-framework.org) env.

## 2. Provided layers

This add-on provides three layers:

- `vim@mfext` (common files for next layers, not useful alone)
- `python3_vim@mfext` (VIM with Python3 support)
- `python2_vim@mfext` (VIM with Python2 support)

## 3. Provides useful packages

So, to install this add-on, you have to install:

- `metwork-mfext-layer-python3_vim` package
- (and/or) `metwork-mfext-layer-python2_vim` package

## 4. Quickstart

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







## 5. Full list of components

| Name | Version | Layer |
| --- | --- | --- |
| [certifi](https://certifi.io/) | 2019.3.9 | python2_vim |
| [certifi](https://certifi.io/) | 2019.3.9 | python3_vim |
| [jedi](https://github.com/davidhalter/jedi) | 0.15.1 | python2_vim |
| [jedi](https://github.com/davidhalter/jedi) | 0.15.1 | python3_vim |
| [parso](https://github.com/davidhalter/parso) | 0.5.1 | python2_vim |
| [parso](https://github.com/davidhalter/parso) | 0.5.1 | python3_vim |
| [vim](http://www.vim.org) | 8.1 | python2_vim |
| [vim](http://www.vim.org) | 8.1 | python3_vim |

*(8 components)*










## 6. Reference documentation

- (for **master (development)** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfextaddon_vim/) for reference documentation.
- (for **latest released stable** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/releases/docs/stable/mfextaddon_vim/) for reference documentation.

For very specific use cases, you might be interested in
[reference documentation for integration branch](http://metwork-framework.org/pub/metwork/continuous_integration/docs/integration/mfextaddon_vim/).

And if you are looking for an old released version, you can search [here](http://metwork-framework.org/pub/metwork/releases/docs/).



## 7. Installation guide

See [this document](.metwork-framework/install_a_metwork_package.md).


## 8. Configuration guide

See [this document](.metwork-framework/configure_a_metwork_package.md).



## 9. Contributing guide

See [CONTRIBUTING.md](CONTRIBUTING.md) file.



## 10. Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.



## 11. Sponsors

*(If you are officially paid to work on MetWork Framework, please contact us to add your company logo here!)*

[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/sponsors/meteofrance-small.jpeg)](http://www.meteofrance.com)
