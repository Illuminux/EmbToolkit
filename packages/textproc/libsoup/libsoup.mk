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
# \file         libsoup.kconfig
# \brief		libsoup.kconfig of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

LIBSOUP_NAME			:= libsoup
LIBSOUP_MAJOR_VERSION	:= $(call embtk_get_pkgversion,libsoup_major)
LIBSOUP_VERSION			:= $(call embtk_get_pkgversion,libsoup)
LIBSOUP_SITE			:= http://ftp.gnome.org/pub/GNOME/sources/libsoup/$(LIBSOUP_MAJOR_VERSION)
LIBSOUP_PACKAGE			:= libsoup-$(LIBSOUP_VERSION).tar.xz
LIBSOUP_SRC_DIR			:= $(embtk_pkgb)/libsoup-$(LIBSOUP_VERSION)
LIBSOUP_BUILD_DIR		:= $(embtk_pkgb)/libsoup-$(LIBSOUP_VERSION)

LIBSOUP_BINS		:=
LIBSOUP_INCLUDES	:= soup-*.h
LIBSOUP_LIBS		:= libsoup-*
LIBSOUP_PKGCONFIGS	:= libsoup-*.pc

LIBSOUP_DEPS		:= glib_install libxml2_install sqlite_install
