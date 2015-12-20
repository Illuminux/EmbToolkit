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
# \file         libusb.mk
# \brief		libusb.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         December 2015
################################################################################

LIBUSB_NAME			:= libusb
LIBUSB_VERSION		:= $(call embtk_get_pkgversion,libusb)
LIBUSB_SITE			:= http://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-$(LIBUSB_VERSION)
LIBUSB_PACKAGE		:= libusb-$(LIBUSB_VERSION).tar.bz2
LIBUSB_SRC_DIR		:= $(embtk_pkgb)/libusb-$(LIBUSB_VERSION)
LIBUSB_BUILD_DIR		:= $(embtk_pkgb)/libusb-$(LIBUSB_VERSION)

LIBUSB_BINS			:= libusb-config
LIBUSB_INCLUDES		:= usb.h usbpp.h
LIBUSB_LIBS			:= libusb.* libusbpp.*
LIBUSB_PKGCONFIGS	:= libusb.pc

LIBUSB_CONFIGURE_OPTS	:= --disable-udev

#LIBUSB_DEPS		:=
