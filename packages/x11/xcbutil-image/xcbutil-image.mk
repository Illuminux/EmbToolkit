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
# \file         xcbutil-image.mk
# \brief		xcbutil-image.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

XCBUTIL-IMAGE_NAME			:= xcbutil-image
XCBUTIL-IMAGE_VERSION		:= $(call embtk_get_pkgversion,xcbutil-image)
XCBUTIL-IMAGE_SITE			:= http://xcb.freedesktop.org/dist
XCBUTIL-IMAGE_PACKAGE		:= xcb-util-image-$(XCBUTIL-IMAGE_VERSION).tar.bz2
XCBUTIL-IMAGE_SRC_DIR		:= $(embtk_pkgb)/xcb-util-image-$(XCBUTIL-IMAGE_VERSION)
XCBUTIL-IMAGE_BUILD_DIR	:= $(embtk_pkgb)/xcb-util-image-$(XCBUTIL-IMAGE_VERSION)

XCBUTIL-IMAGE_BINS			:=
XCBUTIL-IMAGE_INCLUDES		:= xcb/xcb_image.h xcb/xcb_pixel.h
XCBUTIL-IMAGE_LIBS			:= libxcb-image.*
XCBUTIL-IMAGE_PKGCONFIGS	:= xcb-image.pc

XCBUTIL-IMAGE_DEPS			:= xcbutil_install