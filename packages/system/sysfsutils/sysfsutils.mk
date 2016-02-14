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
# \file         sysfsutils.mk
# \brief	sysfsutils.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         February 2016
################################################################################

SYSFSUTILS_NAME		:= sysfsutils
SYSFSUTILS_VERSION	:= $(call embtk_get_pkgversion,sysfsutils)
SYSFSUTILS_SITE		:= https://sourceforge.net/projects/linux-diag/files/sysfsutils/2.1.0/
SYSFSUTILS_PACKAGE	:= sysfsutils-$(SYSFSUTILS_VERSION).tar.gz
SYSFSUTILS_SRC_DIR	:= $(embtk_pkgb)/sysfsutils-$(SYSFSUTILS_VERSION)
SYSFSUTILS_BUILD_DIR	:= $(embtk_pkgb)/sysfsutils-$(SYSFSUTILS_VERSION)

SYSFSUTILS_BINS		:= dlist_test get_device get_driver get_module systool
SYSFSUTILS_INCLUDES	:= sysfs/*
SYSFSUTILS_LIBS		:= libsysfs.*
