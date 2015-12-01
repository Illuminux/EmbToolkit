################################################################################
# Embtoolkit
# Copyright(C) 2009-2011 Abdoulaye Walsimou GAYE.
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
# \file         libjpeg-turbo.mk
# \brief		libjpeg-turbo.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

LIBJPEG-TURBO_NAME			:= libjpeg-turbo
LIBJPEG-TURBO_VERSION		:= $(call embtk_get_pkgversion,libjpeg-turbo)
LIBJPEG-TURBO_SITE			:= http://download.sourceforge.net/libjpeg-turbo
LIBJPEG-TURBO_SITE_MIRROR3	:= ftp://ftp.embtoolkit.org/embtoolkit.org/packages-mirror
LIBJPEG-TURBO_PACKAGE		:= libjpeg-turbo-$(LIBJPEG-TURBO_VERSION).tar.gz
LIBJPEG-TURBO_SRC_DIR		:= $(embtk_pkgb)/libjpeg-turbo-$(LIBJPEG-TURBO_VERSION)
LIBJPEG-TURBO_BUILD_DIR		:= $(embtk_pkgb)/libjpeg-turbo-$(LIBJPEG-TURBO_VERSION)

LIBJPEG-TURBO_BINS			:= 
LIBJPEG-TURBO_SBINS			:=
LIBJPEG-TURBO_LIBS			:= libjpeg*
LIBJPEG-TURBO_INCLUDES		:= jconfig.h jerror.h jmorecfg.h jpeglib.h jpegint.h
LIBJPEG-TURBO_PKGCONFIGS	:= libjpeg.pc
