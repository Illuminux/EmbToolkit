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
# \file         libxinerama.mk
# \brief	libxinerama.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBXINERAMA_NAME	:= libxinerama
LIBXINERAMA_VERSION	:= $(call embtk_get_pkgversion,libxinerama)
LIBXINERAMA_SITE	:= http://xorg.freedesktop.org/releases/individual/lib
LIBXINERAMA_PACKAGE	:= libXinerama-$(LIBXINERAMA_VERSION).tar.gz
LIBXINERAMA_SRC_DIR	:= $(embtk_pkgb)/libXinerama-$(LIBXINERAMA_VERSION)
LIBXINERAMA_BUILD_DIR	:= $(embtk_pkgb)/libXinerama-$(LIBXINERAMA_VERSION)

LIBXINERAMA_BINS	= 
LIBXINERAMA_SBINS	=
LIBXINERAMA_INCLUDES	= X11/extensions/Xinerama.h /X11/extensions/panoramiXext.h
LIBXINERAMA_LIBS	= libXinerama.*
LIBXINERAMA_PKGCONFIGS	= xinerama.pc

#LIBXINERAMA_CONFIGURE_OPTS	:= --disable-malloc0returnsnull

LIBXINERAMA_DEPS = libx11_install libxext_install xineramaproto_install
