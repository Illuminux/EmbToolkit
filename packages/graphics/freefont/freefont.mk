################################################################################
# Embtoolkit
# Copyright(C) 2010-2011 Abdoulaye Walsimou GAYE.
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
# \file         freefont.mk
# \brief	freefont.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         January 2010
################################################################################

FREEFONT_NAME	:= freefont-ttf
FREEFONT_SITE	:= http://ftp.gnu.org/gnu/freefont
FREEFONT_VERSION	:= $(call embtk_get_pkgversion,freefont_ttf)
FREEFONT_PACKAGE	:= freefont-ttf-$(FREEFONT_VERSION).tar.gz
FREEFONT_SRC_DIR	:= $(embtk_pkgb)/freefont-$(FREEFONT_VERSION)
FREEFONT_BUILD_DIR	:= $(embtk_pkgb)/freefont-$(FREEFONT_VERSION)

FREEFONT_DEPS := freetype_install
FREEFONT_DEPS += download_freefont_ttf
FREEFONT_DEPS += $(FREEFONT_BUILD_DIR)/.decompressed

freefont_ttf_install: $(FREEFONT_BUILD_DIR)/.installed
	$(call embtk_pinfo,"Successfully installed GNU FreeFont: TrueType")

$(FREEFONT_BUILD_DIR)/.installed: $(FREEFONT_DEPS)
	$(call embtk_pinfo,"Installing freefont-$(FREEFONT_VERSION) in your root filesystem...")
	$(Q)mkdir -p $(embtk_rootfs)
	$(Q)mkdir -p $(embtk_rootfs)/usr
	$(Q)mkdir -p $(embtk_rootfs)/usr/share
	$(Q)mkdir -p $(embtk_rootfs)/usr/share/fonts
	$(Q)mkdir -p $(embtk_rootfs)/usr/share/fonts/truetype
	$(Q)mkdir -p $(embtk_rootfs)/usr/share/fonts/truetype/freefont
	$(Q)cp $(FREEFONT_BUILD_DIR)/*.ttf					\
				$(embtk_rootfs)/usr/share/fonts/truetype/freefont/

$(FREEFONT_BUILD_DIR)/.decompressed:
	$(call embtk_decompress_pkg,freefont_ttf)

