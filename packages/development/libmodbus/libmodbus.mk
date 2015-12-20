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
# \file         libmodbus.mk
# \brief		libmodbus.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         December 2015
################################################################################

LIBMODBUS_NAME			:= libmodbus
LIBMODBUS_VERSION		:= $(call embtk_get_pkgversion,libmodbus)
LIBMODBUS_SITE			:= http://libmodbus.org/releases
LIBMODBUS_PACKAGE		:= libmodbus-$(LIBMODBUS_VERSION).tar.gz
LIBMODBUS_SRC_DIR		:= $(embtk_pkgb)/libmodbus-$(LIBMODBUS_VERSION)
LIBMODBUS_BUILD_DIR		:= $(embtk_pkgb)/libmodbus-$(LIBMODBUS_VERSION)

LIBMODBUS_INCLUDES		:= modbus/*
LIBMODBUS_LIBS			:= libmodbus.*
LIBMODBUS_PKGCONFIGS	:= libmodbus.pc
