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
# \file         mesa.mk
# \brief	mesa.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

MESA_NAME		:= mesa
MESA_VERSION		:= $(call embtk_get_pkgversion,mesa)
MESA_SITE		:= ftp://ftp.freedesktop.org/pub/mesa/older-versions/10.x/10.3.2
MESA_PACKAGE		:= MesaLib-10.3.2.tar.gz
MESA_SRC_DIR		:= $(embtk_pkgb)/Mesa-$(MESA_VERSION)
MESA_BUILD_DIR		:= $(embtk_pkgb)/Mesa-$(MESA_VERSION)

MESA_BINS		:=
MESA_SBINS		:=
MESA_ETC		:=
MESA_INCLUDES		:= EGL/* KHR/* GL/*
MESA_LIBS		:= libEGL.* libglapi.*
MESA_LIBEXECS		:=
MESA_PKGCONFIGS		:= egl.pc gl.pc
MESA_SHARES		:=
MESA_CFLAGS		:=
MESA_CPPFLAGS		:=
MESA_CXXFLAGS		:=
MESA_SET_RPATH		:= # Only for host packages

MESA_CONFIGURE_ENV	:=
MESA_CONFIGURE_OPTS	:= --disable-dri --disable-dri3 --disable-glx 
MESA_MAKE_ENV		:=
MESA_MAKE_OPTS		:=
MESA_MAKE_DIRS		:=
MESA_CONFIGURE_DIR	:= # relative path in mesa source where to find the configure script

MESA_DEPS		:= glproto_install dri2proto_install dri3proto_install \
	 		   libdrm_install presentproto_install \
			   libxshmfence_install sysfsutils_install

