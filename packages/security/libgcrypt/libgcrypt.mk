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
# \file         libgcrypt.mk
# \brief		libgcrypt.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBGCRYPT_NAME		:= libgcrypt
LIBGCRYPT_VERSION	:= $(call embtk_get_pkgversion,libgcrypt)
LIBGCRYPT_SITE		:= ftp://ftp.gnupg.org/gcrypt/libgcrypt
LIBGCRYPT_PACKAGE	:= libgcrypt-$(LIBGCRYPT_VERSION).tar.gz
LIBGCRYPT_SRC_DIR	:= $(embtk_pkgb)/libgcrypt-$(LIBGCRYPT_VERSION)
LIBGCRYPT_BUILD_DIR	:= $(embtk_pkgb)/libgcrypt-$(LIBGCRYPT_VERSION)

LIBGCRYPT_BINS		:= dumpsexp hmac256 libgcrypt-config mpicalc
LIBGCRYPT_INCLUDES	:= gcrypt.h gcrypt-module.h
LIBGCRYPT_LIBS		:= libgcrypt.*
LIBGCRYPT_PKGCONFIGS	:=

LIBGCRYPT_CONFIGURE_OPTS 	:= --with-gpg-error-prefix="$(embtk_sysroot)/usr" 