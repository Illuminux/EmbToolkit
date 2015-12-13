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
# \file         liblcms2.mk
# \brief	liblcms2.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         December 2009
################################################################################

LIBLCMS2_NAME			:= liblcms2
LIBLCMS2_VERSION		:= $(call embtk_get_pkgversion,liblcms2)
LIBLCMS2_SITE			:= http://download.sourceforge.net/lcms
LIBLCMS2_PACKAGE		:= lcms2-$(LIBLCMS2_VERSION).tar.gz
LIBLCMS2_SRC_DIR		:= $(embtk_pkgb)/lcms2-$(LIBLCMS2_VERSION)
LIBLCMS2_BUILD_DIR		:= $(embtk_pkgb)/lcms2-$(LIBLCMS2_VERSION)

LIBLCMS2_BINS			:= jpgicc linkicc psicc tificc transicc
LIBLCMS2_INCLUDES		:= lcms2.h lcms2_plugin.h
LIBLCMS2_LIBS			:= liblcms2.*
LIBLCMS2_PKGCONFIGS		:= lcms2.pc
