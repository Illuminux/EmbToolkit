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
# \file         presentproto.mk
# \brief	presentproto.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

PRESENTPROTO_NAME	:= presentproto
PRESENTPROTO_VERSION	:= $(call embtk_get_pkgversion,presentproto)
PRESENTPROTO_SITE	:= http://xorg.freedesktop.org/releases/individual/proto
PRESENTPROTO_PACKAGE	:= presentproto-$(PRESENTPROTO_VERSION).tar.gz
PRESENTPROTO_SRC_DIR	:= $(embtk_pkgb)/presentproto-$(PRESENTPROTO_VERSION)
PRESENTPROTO_BUILD_DIR	:= $(embtk_pkgb)/presentproto-$(PRESENTPROTO_VERSION)

PRESENTPROTO_INCLUDES	:= extensions/*
PRESENTPROTO_PKGCONFIGS	:= presentproto.pc
