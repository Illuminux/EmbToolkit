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
# \file         libx11.mk
# \brief	libx11.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         March 2010
# \author       Knut Welzel
# \date 	Januar 2016
################################################################################

LIBX11_NAME			:= libX11
LIBX11_VERSION		:= $(call embtk_get_pkgversion,libx11)
LIBX11_SITE			:= http://xorg.freedesktop.org/releases/individual/lib
LIBX11_PACKAGE		:= libX11-$(LIBX11_VERSION).tar.bz2
LIBX11_SRC_DIR		:= $(embtk_pkgb)/libX11-$(LIBX11_VERSION)
LIBX11_BUILD_DIR	:= $(embtk_pkgb)/libX11-$(LIBX11_VERSION)

LIBX11_BINS			=
LIBX11_SBINS		=
LIBX11_INCLUDES		= X11/cursorfont.h X11/ImUtil.h X11/Xcms.h X11/XKBlib.h	\
			  X11/XlibConf.h X11/Xlib.h X11/Xlibint.h X11/Xlib-xcb.h	\
			  X11/Xlocale.h X11/Xregion.h X11/Xresource.h X11/Xutil.h
LIBX11_LIBS		= libX11* X11/Xcms.txt
LIBX11_PKGCONFIGS	= x11.pc x11-xcb.pc

LIBX11_CONFIGURE_OPTS := --disable-composecache \
			 --without-xmlto \
			 --without-fop \
			 --without-xsltproc \
			 --without-launchd \
			 --disable-loadable-xcursor 

LIBX11_DEPS	= libpthreadstubs_install utilmacros_install inputproto_install \
		  kbproto_install xextproto_install xproto_install libxcb_install \
		  xtrans_install
		  
define embtk_beforeinstall_libx11
	if [ $(CONFIG_EMBTK_HARDFLOAT) == "y" ]; \
	then \
		echo "#include <gnu/stubs-hard.h>" > \
		     $(embtk_sysroot)/usr/include/gnu/stubs.h; \
	fi; \

	if [ $(embtk_buildhost_os) == "macos" ]; \
	then \
		sed -i 's/CFLAGS = /CFLAGS = -D_GNU_SOURCE/g' $(LIBX11_BUILD_DIR)/src/util/Makefile.in; \
		sed -i 's/fprintf(stderr, /printf(/g' $(LIBX11_BUILD_DIR)/src/util/makekeys.c; \
	fi
endef
