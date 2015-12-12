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
# \file         libssh.mk
# \brief		libssh.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBSSH_NAME			:= libssh
LIBSSH_VERSION		:= $(call embtk_get_pkgversion,libssh)
LIBSSH_SITE			:= http://libssh2.org/download
LIBSSH_PACKAGE		:= libssh2-$(LIBSSH_VERSION).tar.gz
LIBSSH_SRC_DIR		:= $(embtk_pkgb)/libssh2-$(LIBSSH_VERSION)
LIBSSH_BUILD_DIR	:= $(embtk_pkgb)/libssh2-$(LIBSSH_VERSION)

LIBSSH_BINS			:=
LIBSSH_INCLUDES		:= libssh2.h libssh2_publickey.h libssh2_sftp.h
LIBSSH_LIBS			:= libssh2.*
LIBSSH_PKGCONFIGS	:= libssh2.pc

LIBSSH_CONFIGURE_OPTS	:= --enable-debug \
						   --disable-largefile \
						   --disable-examples-build

LIBSSH_DEPS		:= libgcrypt_install zlib_install 
