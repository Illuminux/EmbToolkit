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
# \file         libjpeg.mk
# \brief	libjpeg.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         October 2009
################################################################################

LIBJPEG_NAME		:= jpeg
LIBJPEG_VERSION		:= $(call embtk_get_pkgversion,libjpeg)

ifeq ($(LIBJPEG_VERSION),1.3.1)
LIBJPEG_SITE		:= http://download.sourceforge.net/libjpeg-turbo
LIBJPEG_PACKAGE		:= libjpeg-turbo-$(LIBJPEG_VERSION).tar.gz
LIBJPEG_SRC_DIR		:= $(embtk_pkgb)/libjpeg-turbo-$(LIBJPEG_VERSION)
LIBJPEG_BUILD_DIR	:= $(embtk_pkgb)/libjpeg-turbo-$(LIBJPEG_VERSION)
else
LIBJPEG_SITE		:= http://www.ijg.org/files
LIBJPEG_PACKAGE		:= jpegsrc.v$(LIBJPEG_VERSION).tar.gz
LIBJPEG_SRC_DIR		:= $(embtk_pkgb)/jpeg-$(LIBJPEG_VERSION)
LIBJPEG_BUILD_DIR	:= $(embtk_pkgb)/jpeg-$(LIBJPEG_VERSION)
endif

LIBJPEG_BINS		:= cjpeg djpeg jpegtran rdjpgcom wrjpgcom
LIBJPEG_SBINS		:=
LIBJPEG_LIBS		:= libjpeg*
LIBJPEG_INCLUDES	:= jconfig.h jerror.h jmorecfg.h jpeglib.h

ifeq ($(LIBJPEG_VERSION),1.3.1)
LIBJPEG_BINS		+= exifautotran jpegexiforient tjbench
LIBJPEG_INCLUDES	+= jpegint.h
else
LIBJPEG_CONFIGURE_OPTS := --program-suffix=""
endif

#
# libjpeg for host development machine
#
LIBJPEG_HOST_NAME		:= $(LIBJPEG_NAME)
LIBJPEG_HOST_VERSION		:= $(LIBJPEG_VERSION)
LIBJPEG_HOST_SITE		:= $(LIBJPEG_SITE)
LIBJPEG_HOST_SITE_MIRROR1	:= $(LIBJPEG_SITE_MIRROR1)
LIBJPEG_HOST_SITE_MIRROR2	:= $(LIBJPEG_SITE_MIRROR2)
LIBJPEG_HOST_SITE_MIRROR3	:= $(LIBJPEG_SITE_MIRROR3)
LIBJPEG_HOST_PACKAGE		:= $(LIBJPEG_PACKAGE)
LIBJPEG_HOST_SRC_DIR		:= $(embtk_toolsb)/jpeg-$(LIBJPEG_VERSION)
LIBJPEG_HOST_BUILD_DIR		:= $(embtk_toolsb)/jpeg-$(LIBJPEG_VERSION)

LIBJPEG_HOST_CONFIGURE_OPTS	:= --program-suffix=""

