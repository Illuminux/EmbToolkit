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
# \file         xcbutil-wm.mk
# \brief		xcbutil-wm.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

XCBUTIL-WM_NAME			:= xcbutil-wm
XCBUTIL-WM_VERSION		:= $(call embtk_get_pkgversion,xcbutil-wm)
XCBUTIL-WM_SITE			:= http://xcb.freedesktop.org/dist
XCBUTIL-WM_PACKAGE		:= xcb-util-wm-$(XCBUTIL-WM_VERSION).tar.bz2
XCBUTIL-WM_SRC_DIR		:= $(embtk_pkgb)/xcb-util-wm-$(XCBUTIL-WM_VERSION)
XCBUTIL-WM_BUILD_DIR	:= $(embtk_pkgb)/xcb-util-wm-$(XCBUTIL-WM_VERSION)

XCBUTIL-WM_BINS			:=
XCBUTIL-WM_INCLUDES		:= xcb/xcb_icccm.h
XCBUTIL-WM_LIBS			:= libxcb-icccm.*
XCBUTIL-WM_PKGCONFIGS	:= xcb-icccm.pc

XCBUTIL-WM_DEPS			:= xcbutil_install