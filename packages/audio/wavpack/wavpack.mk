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
# \file         wavpack.mk
# \brief	wavpack.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

WAVPACK_NAME		:= wavpack
WAVPACK_VERSION	:= $(call embtk_get_pkgversion,wavpack)
WAVPACK_SITE		:= http://www.wavpack.com
WAVPACK_PACKAGE	:= wavpack-$(WAVPACK_VERSION).tar.bz2
WAVPACK_SRC_DIR	:= $(embtk_pkgb)/wavpack-$(WAVPACK_VERSION)
WAVPACK_BUILD_DIR	:= $(embtk_pkgb)/wavpack-$(WAVPACK_VERSION)

WAVPACK_BINS		:= wavpack wvgain wvunpack
WAVPACK_INCLUDES	:= wavpack/*
WAVPACK_LIBS		:= libwavpack.*
WAVPACK_PKGCONFIGS	:= wavpack.pc
