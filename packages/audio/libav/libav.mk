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
# \file         libav.mk
# \brief	libav.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

LIBAV_NAME		:= libav
LIBAV_VERSION		:= $(call embtk_get_pkgversion,libav)
LIBAV_SITE		:= https://libav.org/releases
LIBAV_PACKAGE		:= libav-$(LIBAV_VERSION).tar.xz
LIBAV_SRC_DIR		:= $(embtk_pkgb)/libav-$(LIBAV_VERSION)
LIBAV_BUILD_DIR		:= $(embtk_pkgb)/libav-$(LIBAV_VERSION)

LIBAV_BINS		:=
LIBAV_INCLUDES		:= libavutil/*
LIBAV_LIBS		:= libavutil.*
LIBAV_PKGCONFIGS	:= libavutil.pc

LIBAV_CONFIGURE_OPTS	:= --enable-cross-compile \
			   --prefix=/usr \
			   --cross-prefix=$(CROSS_COMPILE) \
			   --arch=$(GNU_TARGET_ARCH) \
			   --sysroot=$(embtk_sysroot) \
			   --cc=$(CROSS_COMPILE)gcc \
			   --enable-pic \
			   --disable-asm \
			   --disable-programs \
			   --disable-doc \
			   --target-os=linux \
			   --pkg-config=pkg-config \
			   --enable-shared \
			   --enable-static \
			   --disable-altivec   \
			   --disable-amd3dnow  \
			   --disable-amd3dnowext \
			   --disable-mmx \
			   --disable-sse \
			   --disable-ssse3 \
			   --disable-avx \
			   --enable-gpl \
			   --enable-libtheora \
			   --enable-libvorbis \
			   --enable-nonfree \
			   --enable-openssl \
			   --enable-libmp3lame 
			   
LIBAV_DEPS		:= freetype_install libtheora_install libvorbis_install \
			   x264_install openssl_install lame_install

define embtk_install_libav
	$(call embtk_makeinstall_pkg,libav)
endef
	   
define embtk_configure_libav
	cd $(LIBAV_BUILD_DIR); \
	$(LIBAV_SRC_DIR)/configure $(LIBAV_CONFIGURE_OPTS)
	$(Q)touch $(LIBAV_BUILD_DIR)/.configured
endef

define embtk_beforeinstall_libav
	$(embtk_configure_libav)
endef