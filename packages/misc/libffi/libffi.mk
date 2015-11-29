################################################################################
# Embtoolkit
# Copyright(C) 2015 Knut Welzel.
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
# \file         libffi.mk
# \brief		libffi.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

LIBFFI_NAME			:= libffi
LIBFFI_VERSION		:= $(call embtk_get_pkgversion,libffi)
LIBFFI_SITE			:= ftp://sourceware.org/pub/libffi
LIBFFI_SITE_MIRROR3	:= ftp://ftp.embtoolkit.org/embtoolkit.org/packages-mirror
LIBFFI_PACKAGE		:= libffi-$(LIBFFI_VERSION).tar.gz
LIBFFI_SRC_DIR		:= $(embtk_pkgb)/libffi-$(LIBFFI_VERSION)
LIBFFI_BUILD_DIR	:= $(embtk_pkgb)/libffi-$(LIBFFI_VERSION)

LIBFFI_BINS			= 
LIBFFI_SBINS		=
LIBFFI_INCLUDES		= ffi.h ffitarget.h
LIBFFI_LIBS			= libffi.* 
LIBFFI_PKGCONFIGS	= libffi.pc

LIBFFI_CONFIGURE_ENV = 
LIBFFI_CONFIGURE_OPTS = --srcdir=$(embtk_pkgb)/libffi-$(LIBFFI_VERSION) \
						--enable-builddir=$(embtk_pkgb)/libffi-$(LIBFFI_VERSION)

LIBFFI_DEPS =