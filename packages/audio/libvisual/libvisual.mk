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
# \file         libvisual.mk
# \brief	libvisual.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

LIBVISUAL_NAME		:= libvisual
LIBVISUAL_VERSION	:= $(call embtk_get_pkgversion,libvisual)
LIBVISUAL_SITE		:= http://downloads.sourceforge.net/project/libvisual/libvisual/libvisual-$(LIBVISUAL_VERSION)
LIBVISUAL_PACKAGE	:= libvisual-$(LIBVISUAL_VERSION).tar.gz
LIBVISUAL_SRC_DIR	:= $(embtk_pkgb)/libvisual-$(LIBVISUAL_VERSION)
LIBVISUAL_BUILD_DIR	:= $(embtk_pkgb)/libvisual-$(LIBVISUAL_VERSION)

LIBVISUAL_BINS		:=
LIBVISUAL_INCLUDES	:= libvisual-0.4/libvisual/*
LIBVISUAL_LIBS		:= libvisual-0.4.*
LIBVISUAL_PKGCONFIGS	:= libvisual-0.4.pc

