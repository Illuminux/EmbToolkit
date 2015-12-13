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
# \file         ogg.mk
# \brief		ogg.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

OGG_NAME			:= ogg
OGG_VERSION			:= $(call embtk_get_pkgversion,ogg)
OGG_SITE			:= http://downloads.xiph.org/releases/ogg
OGG_PACKAGE			:= libogg-$(OGG_VERSION).tar.gz
OGG_SRC_DIR			:= $(embtk_pkgb)/libogg-$(OGG_VERSION)
OGG_BUILD_DIR		:= $(embtk_pkgb)/libogg-$(OGG_VERSION)

OGG_BINS			:= ogg
OGG_INCLUDES		:= ogg/*
OGG_LIBS			:= libogg.*
OGG_PKGCONFIGS		:= ogg.pc

OGG_CONFIGURE_OPTS	:= 