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
# \file         qt.mk
# \brief	qt.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         January 2016
################################################################################

QT_NAME		:= qt
QT_VERSION	:= $(call embtk_get_pkgversion,qt)

QT_SRC_DIR	:= $(embtk_pkgb)/qt-everywhere-opensource-src-$(QT_VERSION)
QT_BUILD_DIR	:= $(embtk_pkgb)/qt-everywhere-opensource-src-$(QT_VERSION)

ifeq ($(QT_VERSION),5.4.1)
	include packages/misc/qt/qt5.mk
else
	include packages/misc/qt/qt4.mk
endif

