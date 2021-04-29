include ../../../adm/root.mk
include $(MFEXT_HOME)/share/package.mk

export NAME=vim
export VERSION=8.2
export EXTENSION=tar.bz2
export CHECKTYPE=MD5
export CHECKSUM=2f3e6ab74d20eea2dc00cedc3f0ee4e8
DESCRIPTION=\
VIM est un editeur de texte unix
WEBSITE=http://www.vim.org
LICENSE=GPL
SHORT_VERSION=82

all:: $(PREFIX)/bin/vim
$(PREFIX)/bin/vim:
	$(MAKE) --file=$(MFEXT_HOME)/share/Makefile.standard EXPLICIT_NAME=vim$(SHORT_VERSION) PREFIX=$(PREFIX) OPTIONS="--enable-gui=no --with-local-dir=$(PREFIX) --with-python3-config-dir=$(PREFIX)/../python3_core/lib/python$(PYTHON3_SHORT_VERSION)/config-$(PYTHON3_SHORT_VERSION)-x86_64-linux-gnu --enable-python3interp=dynamic --enable-multibyte --with-features=huge --enable-cscope" download uncompress configure build install
