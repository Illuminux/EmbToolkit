################################################################################
# Embtoolkit
# Copyright(C) 2010-2011 Abdoulaye Walsimou GAYE.
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
# \file         libxdamage.mk
# \brief	libxdamage.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

LIBXDAMAGE_NAME		:= libxdamage
LIBXDAMAGE_VERSION	:= $(call embtk_get_pkgversion,libxdamage)
LIBXDAMAGE_SITE		:= http://xorg.freedesktop.org/releases/individual/lib
LIBXDAMAGE_SITE_MIRROR3	:= ftp://ftp.embtoolkit.org/embtoolkit.org/packages-mirror
LIBXDAMAGE_PACKAGE	:= libXdamage-$(LIBXDAMAGE_VERSION).tar.gz
LIBXDAMAGE_SRC_DIR	:= $(embtk_pkgb)/libXdamage-$(LIBXDAMAGE_VERSION)
LIBXDAMAGE_BUILD_DIR	:= $(embtk_pkgb)/libXdamage-$(LIBXDAMAGE_VERSION)

LIBXDAMAGE_BINS		=
LIBXDAMAGE_SBINS	=
LIBXDAMAGE_INCLUDES	= X11/extensions/*
LIBXDAMAGE_LIBS		= libXdamage.* libXdamage.*
LIBXDAMAGE_PKGCONFIGS	= xdamage.pc

LIBXDAMAGE_DEPS		= libxfixes_install
