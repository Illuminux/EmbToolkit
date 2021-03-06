################################################################################
# Embtoolkit
# Copyright(C) 2010-2013 Abdoulaye Walsimou GAYE.
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
# \file         mkimage.mk
# \brief	mkimage.mk of Embtoolkit. u-boot makimage tool, needed to create
# \brief	uImage.
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         August 2010
################################################################################

MAKEIMAGE_VERSION	:= 0.4
MAKEIMAGE_SITE		:= http://ftp.debian.org/debian/pool/main/u/uboot-mkimage
MAKEIMAGE_PACKAGE	:= mkimage-$(MAKEIMAGE_VERSION)-nosource-need.tar.bz2
MAKEIMAGE_BUILD_DIR	:= $(embtk_toolsb)/mkimage
MAKEIMAGE_BIN		:= $(embtk_htools)/usr/bin/mkimage
export MAKEIMAGE_BIN

define embtk_install_mkimage
	$(MAKE) mkimage_install
endef

mkimage_install:
	test -e $(MAKEIMAGE_BUILD_DIR)/.installed || \
	$(MAKE) $(MAKEIMAGE_BUILD_DIR)/.installed

$(MAKEIMAGE_BUILD_DIR)/.installed: zlib_host_install
	$(Q)cp -R $(EMBTK_ROOT)/src/mkimage $(embtk_toolsb)/
	$(Q)$(MAKE) -C $(MAKEIMAGE_BUILD_DIR) \
			CPPFLAGS="-I$(embtk_htools)/usr/include"
	$(Q)$(MAKE) -C $(MAKEIMAGE_BUILD_DIR) \
			DESTDIR=$(embtk_htools) install
	@touch $@

download_mkimage:
