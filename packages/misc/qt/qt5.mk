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
# \file         qt5.mk
# \brief	qt5.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         January 2016
################################################################################

QT_SITE		:= http://download.qt.io/official_releases/qt/5.5/$(QT_VERSION)/single
QT_PACKAGE	:= qt-everywhere-opensource-src-$(QT_VERSION).tar.gz

QT_MKSPEC_DIR	:= $(QT_SRC_DIR)/qtbase/mkspecs/linux-$(STRICT_GNU_TARGET)-g++


ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM7TDMI),y)
	QT_MARCH := armv4t
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM8),y)
	QT_MARCH := armv4
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM9TDMI),y)
	QT_MARCH := armv4t
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM9E),y)
	QT_MARCH := armv5tej
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM10E),y)
	QT_MARCH := armv5te
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_XSCALE),y)
	QT_MARCH := armv5te
else ifeq ($(CONFIG_EMBTK_ARCH_ARM_FAMILY_ARM11),y)
	QT_MARCH := armv6j
else ifeq ($(EMBTK_ARCH_ARM_FAMILY_CORTEX),y)
	QT_MARCH := armv7-v
else ifeq ($(EMBTK_EMBTK_ARCH_ARM_FAMILY_IWMMXT),y)
	QT_MARCH := iwmmxt
else 
	QT_MARCH := armv4
endif

QT_CFLAGS_RELEASE	:= -march=$(QT_MARCH) \
			   -mtune=$(EMBTK_MCU_FLAG) \
			   -mfpu=$(GCC_WITH_FPU-y) \
			   -mfloat-abi=$(GCC_WITH_FLOAT-y)
			   
QT_CONFIGURE_OPTS	:= -v \
                           -prefix /usr \
			   -opensource \
			   -confirm-license \
			   -xplatform linux-$(STRICT_GNU_TARGET)-g++ \
			   -sysroot $(embtk_sysroot) \
			   -force-pkg-config \
			   -make libs 
			   
			   
QT_DEPS		:= zlib_install xz_install libffi_install glib_install \
		   libxext_install libjpeg_install tslib_install libx11_install \
		   libxcb_install libxau_install liborc_install dbus_install \
		   libtiff_install libpng_install gstreamer_install \
		   gst-base_install gst-good_install alsa-lib_install \
		   freetype_install openssl_install 

define embtk_install_qt
	$(call embtk_makeinstall_pkg,qt)
endef

define embtk_createmkspec_qt
	mkdir -p $(QT_MKSPEC_DIR); \
	cp -f $(QT_MKSPEC_DIR)/../linux-arm-gnueabi-g++/qplatformdefs.h $(QT_MKSPEC_DIR)/; \
	echo "MAKEFILE_GENERATOR      = UNIX"                  > $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "CONFIG                 += incremental"          >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_INCREMENTAL_STYLE = sublib"               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo ""                                               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "include(../../common/linux.conf)"               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "include(../../common/gcc-base-unix.conf)"       >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "include(../../common/g++-unix.conf)"            >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo ""                                               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_CFLAGS_RELEASE   = $(QT_CFLAGS_RELEASE)"  >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_CXXFLAGS_RELEASE = $(QT_CFLAGS_RELEASE)"  >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo ""                                               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_CC         = $(CROSS_COMPILE)gcc"         >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_CXX        = $(CROSS_COMPILE)g++"         >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_LINK       = $(CROSS_COMPILE)g++"         >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_LINK_SHLIB = $(CROSS_COMPILE)g++"         >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo ""                                               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_AR         = $(CROSS_COMPILE)ar cqs"      >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_OBJCOPY    = $(CROSS_COMPILE)objcopy"     >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_STRIP      = $(CROSS_COMPILE)strip"       >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "QMAKE_READELF    = $(CROSS_COMPILE)readelf"     >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo ""                                               >> $(QT_MKSPEC_DIR)/qmake.conf; \
	echo "load(qt_config)"                                >> $(QT_MKSPEC_DIR)/qmake.conf;
endef

define embtk_configure_qt
	cd $(QT_BUILD_DIR); \
	$(QT_BUILD_DIR)/configure $(QT_CONFIGURE_OPTS);
	touch $(QT_BUILD_DIR)/.configured
endef

define embtk_beforeinstall_qt
	$(embtk_createmkspec_qt) \
	$(embtk_configure_qt)
endef

