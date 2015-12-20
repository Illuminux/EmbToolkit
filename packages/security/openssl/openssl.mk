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

OPENSSL_BINS		:= openssl c_rehash
OPENSSL_SBINS		:=
OPENSSL_ETC			:= ssl/*
OPENSSL_INCLUDES	:= openssl/*
OPENSSL_LIBS		:= libcrypto.* libssl.* openssl-1.0.0/* ssl/*
OPENSSL_PKGCONFIGS	:= libcrypto.pc libssl.pc openssl.pc

OPENSSL_CONFIGURE_OPTS	:= linux-generic32 \
						   zlib-dynamic \
						   shared \
						   no-sse2 \
						   --prefix=$(embtk_sysroot)/usr \
						   --openssldir=$(embtk_sysroot)/usr
OPENSSL_MAKE_ENV	:=
OPENSSL_MAKE_OPTS	:= CROSS_COMPILE=$(CROSS_COMPILE) \
					   ARCH="arm"

define embtk_install_openssl
	$(embtk_configure_openssl)
	cd $(OPENSSL_BUILD_DIR); \
	$(MAKE) $(OPENSSL_MAKE_OPTS)
	cd $(OPENSSL_BUILD_DIR); \
	$(MAKE) install_sw
endef

define embtk_configure_openssl
	cd $(OPENSSL_BUILD_DIR); \
	CROSS_COMPILE=$(CROSS_COMPILE) \
	$(OPENSSL_SRC_DIR)/Configure $(OPENSSL_CONFIGURE_OPTS)
	touch $(OPENSSL_BUILD_DIR)/.configured
endef

OPENSSL_DEPS := zlib_install 
