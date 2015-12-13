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
# \file         libtheora.mk
# \brief		libtheora.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBTHEORA_NAME			:= libtheora
LIBTHEORA_VERSION		:= $(call embtk_get_pkgversion,libtheora)
LIBTHEORA_SITE			:= http://downloads.xiph.org/releases/theora/
LIBTHEORA_PACKAGE		:= libtheora-$(LIBTHEORA_VERSION).tar.gz
LIBTHEORA_SRC_DIR		:= $(embtk_pkgb)/libtheora-$(LIBTHEORA_VERSION)
LIBTHEORA_BUILD_DIR		:= $(embtk_pkgb)/libtheora-$(LIBTHEORA_VERSION)

LIBTHEORA_BINS			:=
LIBTHEORA_INCLUDES		:= theora/*
LIBTHEORA_LIBS			:= libtheora.* libtheoradec.* libtheoraenc.*
LIBTHEORA_PKGCONFIGS	:= theora.pc theoradec.pc theoraenc.pc

LIBTHEORA_CONFIGURE_OPTS := --disable-examples \
						    --disable-oggtest \
						    --disable-vorbistest \
						    --enable-telemetry

LIBTHEORA_DEPS		:= ogg_install cairo_install
