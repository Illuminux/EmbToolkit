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
# \file         libdrm.mk
# \brief	libdrm.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

LIBDRM_NAME		:= libdrm
LIBDRM_VERSION		:= $(call embtk_get_pkgversion,libdrm)
LIBDRM_SITE		:= https://dri.freedesktop.org/libdrm/
LIBDRM_PACKAGE		:= libdrm-$(LIBDRM_VERSION).tar.gz
LIBDRM_SRC_DIR		:= $(embtk_pkgb)/libdrm-$(LIBDRM_VERSION)
LIBDRM_BUILD_DIR	:= $(embtk_pkgb)/libdrm-$(LIBDRM_VERSION)

LIBDRM_BINS		:=
LIBDRM_INCLUDES		:= libdrm/* omap/* xf86drm.h xf86drmMode.h
LIBDRM_LIBS		:= libdrm.* libdrm_*
LIBDRM_PKGCONFIGS	:= libdrm.pc libdrm_exynos.pc libdrm_freedreno.pc libdrm_nouveau.pc libdrm_omap.pc libdrm_radeon.pc
