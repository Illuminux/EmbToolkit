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
# \file         xz.mk
# \brief	xz.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         December 2009
################################################################################

XZ_NAME			:= xz
XZ_VERSION		:= $(call embtk_get_pkgversion,xz)
XZ_SITE			:= http://tukaani.org/xz
XZ_PACKAGE		:= xz-$(XZ_VERSION).tar.gz
XZ_SRC_DIR		:= $(embtk_pkgb)/xz-$(XZ_VERSION)
XZ_BUILD_DIR	:= $(embtk_pkgb)/xz-$(XZ_VERSION)

XZ_BINS			:= lzmainfo unxz xz xzcat xzcmp xzdiff xzegrep xzfgrep xzgrep xzless xzmore
XZ_INCLUDES		:= lzma.h lzma/*
XZ_LIBS			:= liblzma.*
XZ_PKGCONFIGS	:= liblzma.pc
