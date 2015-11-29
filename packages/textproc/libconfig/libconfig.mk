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
# \file         libconfig.kconfig
# \brief		libconfig.kconfig of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

LIBCONFIG_NAME		:= libconfig
LIBCONFIG_VERSION	:= $(call embtk_get_pkgversion,libconfig)
LIBCONFIG_SITE		:= http://www.hyperrealm.com/libconfig
LIBCONFIG_PACKAGE	:= libconfig-$(LIBCONFIG_VERSION).tar.gz
LIBCONFIG_SRC_DIR	:= $(embtk_pkgb)/libconfig-$(LIBCONFIG_VERSION)
LIBCONFIG_BUILD_DIR	:= $(embtk_pkgb)/libconfig-$(LIBCONFIG_VERSION)

LIBCONFIG_BINS			:=
LIBCONFIG_INCLUDES		:= libconfig.h libconfig.h++
LIBCONFIG_LIBS			:= libconfig.* libconfig++.*
LIBCONFIG_PKGCONFIGS	:= libconfig.pc
