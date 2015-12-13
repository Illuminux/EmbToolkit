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
# \file         json-glib.kconfig
# \brief		json-glib.kconfig of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

JSON-GLIB_NAME		:= json-glib
JSON-GLIB_VERSION	:= $(call embtk_get_pkgversion,json-glib)
JSON-GLIB_SITE		:= ftp.gnome.org/pub/gnome/sources/json-glib/1.0
JSON-GLIB_PACKAGE	:= json-glib-$(JSON-GLIB_VERSION).tar.xz
JSON-GLIB_SRC_DIR	:= $(embtk_pkgb)/json-glib-$(JSON-GLIB_VERSION)
JSON-GLIB_BUILD_DIR	:= $(embtk_pkgb)/json-glib-$(JSON-GLIB_VERSION)

JSON-GLIB_BINS		:=
JSON-GLIB_INCLUDES	:= json-glib/json-*.h
JSON-GLIB_LIBS		:= libjson-glib-1.0.*
JSON-GLIB_PKGCONFIGS	:= json-glib-1.0.pc

JSON-GLIB_DEPS		:= glib_install libxml2_install 
