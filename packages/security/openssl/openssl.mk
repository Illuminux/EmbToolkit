################################################################################
# Embtoolkit
# Copyright(C) 2009-2012 Abdoulaye Walsimou GAYE.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################
#
# \file         openssl.mk
# \brief		openssl.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

OPENSSL_NAME		:= openssl
OPENSSL_VERSION		:= $(call embtk_get_pkgversion,openssl)
OPENSSL_SITE		:= https://www.openssl.org/source
OPENSSL_PACKAGE		:= openssl-$(OPENSSL_VERSION).tar.gz
OPENSSL_SRC_DIR		:= $(embtk_pkgb)/openssl-$(OPENSSL_VERSION)
OPENSSL_BUILD_DIR	:= $(embtk_pkgb)/openssl-$(OPENSSL_VERSION)

OPENSSL_BINS		:=
OPENSSL_SBINS		:=
OPENSSL_INCLUDES	:= openssl/*
OPENSSL_LIBS		:= libcrypto.* libssl.* openssl-1.0.0/* 
OPENSSL_PKGCONFIGS	:= libcrypto.pc libssl.pc openssl.pc

OPENSSL_CONFIGURE_ENV	:=
OPENSSL_CONFIGURE_OPTS	:= linux-generic32 \
						   --openssldir=$(embtk_sysroot)/usr \
						   zlib-dynamic \
						   shared \
						   no-sse2
						   
OPENSSL_MAKE_ENV		:=
OPENSSL_MAKE_OPTS		:=
OPENSSL_MAKE_DIRS		:=
OPENSSL_CONFIGURE_DIR	:= # relative path in foo source where to find the configure script


define embtk_install_openssl
	$(call embtk_makeinstall_pkg,openssl)
endef

define embtk_configure_openssl
	$(Q)cd $(OPENSSL_BUILD_DIR); \
	PROCESSOR=arm \
	CROSS_COMPILE=$(CROSS_COMPILE) \
	CFLAGS="-I$(embtk_sysroot)/usr/include" \
	CXXFLAGS="$(TARGET_CFLAGS)" \
	LDFLAGS="-L$(embtk_sysroot)/$(LIBDIR) -L$(embtk_sysroot)/usr/$(LIBDIR)"	\
	CPPFLAGS="-I$(embtk_sysroot)/usr/include" \
	PKG_CONFIG=$(PKGCONFIG_BIN) \
	PKG_CONFIG_PATH=$(EMBTK_PKG_CONFIG_PATH) \
	$(CONFIG_EMBTK_SHELL) $(OPENSSL_SRC_DIR)/Configure $(OPENSSL_CONFIGURE_OPTS)
	$(Q)touch $(OPENSSL_BUILD_DIR)/.configured
endef

define embtk_beforeinstall_openssl
	$(embtk_configure_openssl)
endef






OPENSSL_DEPS		:=

#
# if not empty, force build system to not remove this package workspace after
# successful build even if it is globally configured to do so.
#
OPENSSL_KEEP_SRC_DIR	:=
