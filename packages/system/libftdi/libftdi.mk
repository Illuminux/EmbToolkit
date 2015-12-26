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
# \file         libftdi.mk
# \brief		libftdi.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBFTDI_NAME		:= libftdi
LIBFTDI_VERSION		:= $(call embtk_get_pkgversion,libftdi)
LIBFTDI_SITE		:= http://www.intra2net.com/en/developer/libftdi/download
LIBFTDI_PACKAGE		:= libftdi-$(LIBFTDI_VERSION).tar.gz
LIBFTDI_SRC_DIR		:= $(embtk_pkgb)/libftdi-$(LIBFTDI_VERSION)
LIBFTDI_BUILD_DIR	:= $(embtk_pkgb)/libftdi-$(LIBFTDI_VERSION)

LIBFTDI_BINS		:= libftdi-config
LIBFTDI_INCLUDES	:= ftdi.h
LIBFTDI_LIBS		:= libftdi.*
LIBFTDI_PKGCONFIGS	:= libftdi.pc

LIBFTDI_OPTS		:= --without-docs

LIBFTDI_DEPS		:= libusb_install
