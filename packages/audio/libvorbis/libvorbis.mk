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
# \file         libvorbis.mk
# \brief		libvorbis.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBVORBIS_NAME			:= libvorbis
LIBVORBIS_VERSION		:= $(call embtk_get_pkgversion,libvorbis)
LIBVORBIS_SITE			:= http://downloads.xiph.org/releases/vorbis
LIBVORBIS_PACKAGE		:= libvorbis-$(LIBVORBIS_VERSION).tar.gz
LIBVORBIS_SRC_DIR		:= $(embtk_pkgb)/libvorbis-$(LIBVORBIS_VERSION)
LIBVORBIS_BUILD_DIR		:= $(embtk_pkgb)/libvorbis-$(LIBVORBIS_VERSION)

LIBVORBIS_BINS			:= libvorbis
LIBVORBIS_INCLUDES		:= libvorbis/*
LIBVORBIS_LIBS			:= liblibvorbis.* libvorbisenc.* libvorbisfile.*
LIBVORBIS_PKGCONFIGS	:= libvorbis.pc vorbisenc.pc vorbisfile.pc

LIBVORBIS_CONFIGURE_OPTS := --disable-docs \
							--disable-example \
							--disable-oggtest
							
LIBVORBIS_DEPS	:= ogg_install 