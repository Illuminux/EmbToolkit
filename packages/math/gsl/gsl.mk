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
# \file         gsl.mk
# \brief		gsl.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         November 2015
################################################################################

GSL_NAME		:= gsl
GSL_VERSION		:= $(call embtk_get_pkgversion,gsl)
GSL_SITE		:= http://ftp.u-tx.net/gnu/gsl
GSL_PACKAGE		:= gsl-$(GSL_VERSION).tar.gz
GSL_SRC_DIR		:= $(embtk_pkgb)/gsl-$(GSL_VERSION)
GSL_BUILD_DIR	:= $(embtk_pkgb)/gsl-$(GSL_VERSION)

GSL_BINS		:= gsl-config gsl-histogram gsl-randist
GSL_SBINS		:=
GSL_INCLUDES	:= gsl/gsl*.h
GSL_LIBS		:= libgsl.* libgslcblas.*
GSL_PKGCONFIGS	:= gsl.pc
GSL_CFLAGS		:=
GSL_CPPFLAGS	:=
GSL_CXXFLAGS	:=

GSL_DEPS		:=
