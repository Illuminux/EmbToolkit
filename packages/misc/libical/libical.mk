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
# \file         libical.mk
# \brief		libical.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         December 2015
################################################################################

LIBICAL_NAME		:= libical
LIBICAL_VERSION		:= $(call embtk_get_pkgversion,libical)
LIBICAL_SITE		:= http://download.sourceforge.net/freeassociation/libical/libical-$(LIBICAL_VERSION)
LIBICAL_PACKAGE		:= libical-$(LIBICAL_VERSION).tar.gz
LIBICAL_SRC_DIR		:= $(embtk_pkgb)/libical-$(LIBICAL_VERSION)
LIBICAL_BUILD_DIR	:= $(embtk_pkgb)/libical-$(LIBICAL_VERSION)

LIBICAL_BINS		:=
LIBICAL_INCLUDES	:= libical.h libical/*
LIBICAL_LIBS		:= libical.* libicalss.* libicalvcal.*
LIBICAL_PKGCONFIGS	:= libical.pc

define embtk_install_libical
	$(call embtk_makeinstall_pkg,libical)
endef

define embtk_configure_libical
	$(Q)cd $(LIBICAL_BUILD_DIR);					\
	CC=$(TARGETCC)									\
	CXX=$(TARGETCXX)								\
	AR=$(TARGETAR)									\
	RANLIB=$(TARGETRANLIB)							\
	AS=$(CROSS_COMPILE)as							\
	LD=$(TARGETLD)									\
	NM=$(TARGETNM)									\
	STRIP=$(TARGETSTRIP)							\
	OBJDUMP=$(TARGETOBJDUMP)						\
	OBJCOPY=$(TARGETOBJCOPY)						\
	cmake -DCMAKE_SYSTEM_NAME='Linux' 				\
		  -DCMAKE_SYSTEM_VERSION=1					\
		  -DCMAKE_SYSTEM_PROCESSOR='$(LINUX_ARCH)'	\
		  -DCMAKE_C_COMPILER='$(TARGETCC)'			\
		  -DCMAKE_CXX_COMPILER='$(TARGETCXX)' 		\
		  -DCMAKE_CROSSCOMPILING=True				\
		  -DCMAKE_INSTALL_PREFIX='/usr'	\
		  -DSHARED_ONLY=yes
endef

define embtk_beforeinstall_libical
	$(embtk_configure_libical)
endef

