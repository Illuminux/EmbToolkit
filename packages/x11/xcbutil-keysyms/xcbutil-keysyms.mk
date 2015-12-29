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
# \file         xcbutil-keysyms.mk
# \brief		xcbutil-keysyms.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

XCBUTIL-KEYSYMS_NAME		:= xcbutil-keysyms
XCBUTIL-KEYSYMS_VERSION		:= $(call embtk_get_pkgversion,xcbutil-keysyms)
XCBUTIL-KEYSYMS_SITE		:= http://xcb.freedesktop.org/dist
XCBUTIL-KEYSYMS_PACKAGE		:= xcb-util-keysyms-$(XCBUTIL-KEYSYMS_VERSION).tar.bz2
XCBUTIL-KEYSYMS_SRC_DIR		:= $(embtk_pkgb)/xcb-util-keysyms-$(XCBUTIL-KEYSYMS_VERSION)
XCBUTIL-KEYSYMS_BUILD_DIR	:= $(embtk_pkgb)/xcb-util-keysyms-$(XCBUTIL-KEYSYMS_VERSION)

XCBUTIL-KEYSYMS_BINS		:=
XCBUTIL-KEYSYMS_INCLUDES	:= xcb/xcb_image.h xcb/xcb_pixel.h
XCBUTIL-KEYSYMS_LIBS		:= libxcb-keysyms.*
XCBUTIL-KEYSYMS_PKGCONFIGS	:= xcb-keysyms.pc

XCBUTIL-KEYSYMS_DEPS		:= xcbutil_install