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
# \file         bluez.mk
# \brief		bluez.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         December 2015
################################################################################

BLUEZ_NAME			:= bluez
BLUEZ_VERSION		:= $(call embtk_get_pkgversion,bluez)
BLUEZ_SITE			:= http://www.kernel.org/pub/linux/bluetooth
BLUEZ_PACKAGE		:= bluez-$(BLUEZ_VERSION).tar.gz
BLUEZ_SRC_DIR		:= $(embtk_pkgb)/bluez-$(BLUEZ_VERSION)
BLUEZ_BUILD_DIR		:= $(embtk_pkgb)/bluez-$(BLUEZ_VERSION)

BLUEZ_BINS			:= hciconfig
BLUEZ_ETC			:= bluetooth/* dbus-1/system.d/* default/*
BLUEZ_INCLUDES		:= bluetooth/* 
BLUEZ_LIBS			:= libbluetooth.* systemd/* udev/* bluetooth/*
BLUEZ_PKGCONFIGS	:= bluez.pc

BLUEZ_CONFIGURE_OPTS	:= --enable-threads \
						   --enable-library \
						   --disable-udev \
						   --disable-obex \
						   --disable-systemd
						   
BLUEZ_CONFIGURE_ENV		:= LIBS='-lncurses -lreadline'
						   
BLUEZ_DEPS		:= dbus_install libical_install readline_install