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
# \file         x264.mk
# \brief	x264.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

X264_NAME		:= x264
X264_VERSION		:= $(call embtk_get_pkgversion,x264)
X264_SITE		:= ftp://ftp.videolan.org/pub/x264/snapshots
X264_PACKAGE		:= x264-snapshot-20141114-2245-stable.tar.bz2
X264_SRC_DIR		:= $(embtk_pkgb)/x264-snapshot-20141114-2245-stable
X264_BUILD_DIR		:= $(embtk_pkgb)/x264-snapshot-20141114-2245-stable

X264_BINS		:=
X264_INCLUDES		:= x264.h x264_config.h
X264_LIBS		:= libx264.*
X264_PKGCONFIGS		:= x264.pc
X264_SHARES		:=
X264_CFLAGS		:=
X264_CPPFLAGS		:=
X264_CXXFLAGS		:=

X264_CONFIGURE_ENV	:=
X264_CONFIGURE_OPTS	:= --cross-prefix=$(CROSS_COMPILE) \
			   --enable-shared \
			   --enable-static \
			   --enable-strip \
			   --disable-asm
X264_MAKE_ENV		:=
X264_MAKE_OPTS		:= 

define embtk_postinstall_x264
	sed \
	-i 's;-L/usr/lib;-L$(embtk_sysroot)/usr/lib;g' \
	$(embtk_sysroot)/usr/lib/pkgconfig/x264.pc;
endef