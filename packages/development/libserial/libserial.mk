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
# \file         libserial.mk
# \brief		libserial.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LIBSERIAL_NAME			:= libserial
LIBSERIAL_VERSION		:= $(call embtk_get_pkgversion,libserial)
LIBSERIAL_SITE			:= https://github.com/crayzeewulf/libserial/archive
LIBSERIAL_PACKAGE		:= libserial_$(LIBSERIAL_VERSION).tar.gz
LIBSERIAL_SRC_DIR		:= $(embtk_pkgb)/libserial-libserial_$(LIBSERIAL_VERSION)
LIBSERIAL_BUILD_DIR		:= $(embtk_pkgb)/libserial-libserial_$(LIBSERIAL_VERSION)

LIBSERIAL_BINS			:=
LIBSERIAL_INCLUDES		:= SerialPort.h SerialStream.h SerialStreamBuf.h
LIBSERIAL_LIBS			:= libserial.*
LIBSERIAL_PKGCONFIGS	:= libserial.pc

LIBSERIAL_DEPS		:= boost_install

define embtk_beforeinstall_libserial
	sed -i 's;sip/configure.py;;g' $(LIBSERIAL_BUILD_DIR)/configure.in;
	sed -i 's;sip/Makefile;;g' $(LIBSERIAL_BUILD_DIR)/configure.in;
	sed -i 's;sip;;g' $(LIBSERIAL_BUILD_DIR)/Makefile.am;
	$(Q)cd $(LIBSERIAL_BUILD_DIR); \
	$(MAKE) -f Makefile.dist
endef