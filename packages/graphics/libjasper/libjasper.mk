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
# \file         libjasper.mk
# \brief		libjasper.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

LIBJASPER_NAME			:= libjasper
LIBJASPER_VERSION		:= $(call embtk_get_pkgversion,libjasper)
LIBJASPER_SITE			:= http://www.ece.uvic.ca/~mdadams/jasper/software
LIBJASPER_SITE_MIRROR3	:= ftp://ftp.embtoolkit.org/embtoolkit.org/packages-mirror
LIBJASPER_PACKAGE		:= jasper-$(LIBJASPER_VERSION).zip
LIBJASPER_SRC_DIR		:= $(embtk_pkgb)/jasper-$(LIBJASPER_VERSION)
LIBJASPER_BUILD_DIR		:= $(embtk_pkgb)/jasper-$(LIBJASPER_VERSION)

LIBJASPER_BINS			:= 
LIBJASPER_SBINS			:=
LIBJASPER_LIBS			:= libjasper*
LIBJASPER_INCLUDES		:= jasper*

LIBJASPER_DEPS			:= libjpeg-turbo_install

