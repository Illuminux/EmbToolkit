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
# \file         liborc.mk
# \brief	liborc.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

LIBORC_NAME		:= liborc
LIBORC_VERSION		:= $(call embtk_get_pkgversion,liborc)
LIBORC_SITE		:= http://gstreamer.freedesktop.org/data/src/orc
LIBORC_PACKAGE		:= orc-$(LIBORC_VERSION).tar.xz
LIBORC_SRC_DIR		:= $(embtk_pkgb)/orc-$(LIBORC_VERSION)
LIBORC_BUILD_DIR	:= $(embtk_pkgb)/orc-$(LIBORC_VERSION)

LIBORC_BINS		:= orc-bugreport orcc
LIBORC_INCLUDES		:= orc-0.4/*
LIBORC_LIBS		:= liborc-0.4.* liborc-test-0.4.*
LIBORC_PKGCONFIGS	:= orc-0.4.pc
