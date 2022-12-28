include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=vim
export VERSION=9.0.1062
export EXTENSION=tar.gz
export CHECKTYPE=MD5
export CHECKSUM=087ecdafc39b3b6d2e48a8e0be5d0515
DESCRIPTION=\
Vim is a highly configurable text editor for efficiently creating and changing any kind of text.
WEBSITE=https://www.vim.org
LICENSE=GPL

all:: $(PREFIX)/bin/vim
$(PREFIX)/bin/vim:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard PREFIX=$(PREFIX) OPTIONS="--enable-gui=no --with-local-dir=$(PREFIX) --with-python3-config-dir=$(PREFIX)/../python3_core/lib/python$(PYTHON3_SHORT_VERSION)/config-$(PYTHON3_SHORT_VERSION)-x86_64-linux-gnu --enable-python3interp=dynamic --enable-multibyte --with-features=huge --enable-cscope" download uncompress configure build install
