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
# \file         dri3proto.mk
# \brief	dri3proto.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

DRI3PROTO_NAME		:= dri3proto
DRI3PROTO_VERSION	:= $(call embtk_get_pkgversion,dri3proto)
DRI3PROTO_SITE		:= http://xorg.freedesktop.org/releases/individual/proto
DRI3PROTO_PACKAGE	:= dri3proto-$(DRI3PROTO_VERSION).tar.gz
DRI3PROTO_SRC_DIR	:= $(embtk_pkgb)/dri3proto-$(DRI3PROTO_VERSION)
DRI3PROTO_BUILD_DIR	:= $(embtk_pkgb)/dri3proto-$(DRI3PROTO_VERSION)

DRI3PROTO_INCLUDES	:= extensions/dri3proto.h
DRI3PROTO_PKGCONFIGS	:= dri3proto.pc
