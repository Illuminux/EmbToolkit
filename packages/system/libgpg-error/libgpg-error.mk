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
# \file         libgpg-error.mk
# \brief		libgpg-error.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         December 2009
################################################################################

LIBGPG-ERROR_NAME		:= libgpg-error
LIBGPG-ERROR_VERSION	:= $(call embtk_get_pkgversion,libgpg-error)
LIBGPG-ERROR_SITE		:= ftp://ftp.gnupg.org/GnuPG/libgpg-error
LIBGPG-ERROR_PACKAGE	:= libgpg-error-$(LIBGPG-ERROR_VERSION).tar.gz
LIBGPG-ERROR_SRC_DIR	:= $(embtk_pkgb)/libgpg-error-$(LIBGPG-ERROR_VERSION)
LIBGPG-ERROR_BUILD_DIR	:= $(embtk_pkgb)/libgpg-error-$(LIBGPG-ERROR_VERSION)

LIBGPG-ERROR_BINS		:= gpg-error gpg-error-config
LIBGPG-ERROR_INCLUDES	:= gpg-error.h
LIBGPG-ERROR_LIBS		:= libgpg-error.*
LIBGPG-ERROR_PKGCONFIGS	:=

LIBGPG-ERROR_CONFIGURE_OPTS	:= --disable-nls
