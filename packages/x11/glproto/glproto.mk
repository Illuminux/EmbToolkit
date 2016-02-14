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
# \file         glproto.mk
# \brief	glproto.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

GLPROTO_NAME		:= glproto
GLPROTO_VERSION		:= $(call embtk_get_pkgversion,glproto)
GLPROTO_SITE		:= http://xorg.freedesktop.org/releases/individual/proto
GLPROTO_PACKAGE		:= glproto-$(GLPROTO_VERSION).tar.gz
GLPROTO_SRC_DIR		:= $(embtk_pkgb)/glproto-$(GLPROTO_VERSION)
GLPROTO_BUILD_DIR		:= $(embtk_pkgb)/glproto-$(GLPROTO_VERSION)

GLPROTO_INCLUDES		:= GL/*
GLPROTO_PKGCONFIGS		:= glproto.pc
