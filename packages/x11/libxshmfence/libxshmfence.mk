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
# \file         libxshmfence.mk
# \brief	libxshmfence.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

LIBXSHMFENCE_NAME		:= libxshmfence
LIBXSHMFENCE_VERSION		:= $(call embtk_get_pkgversion,libxshmfence)
LIBXSHMFENCE_SITE		:= http://xorg.freedesktop.org/releases/individual/lib
LIBXSHMFENCE_SITE_MIRROR3	:= ftp://ftp.embtoolkit.org/embtoolkit.org/packages-mirror
LIBXSHMFENCE_PACKAGE		:= libxshmfence-$(LIBXSHMFENCE_VERSION).tar.gz
LIBXSHMFENCE_SRC_DIR		:= $(embtk_pkgb)/libxshmfence-$(LIBXSHMFENCE_VERSION)
LIBXSHMFENCE_BUILD_DIR		:= $(embtk_pkgb)/libxshmfence-$(LIBXSHMFENCE_VERSION)

LIBXSHMFENCE_BINS		=
LIBXSHMFENCE_SBINS		=
LIBXSHMFENCE_INCLUDES		= /X11/xshmfence.h
LIBXSHMFENCE_LIBS		= libxshmfence.* 
LIBXSHMFENCE_PKGCONFIGS		= xshmfence.pc
