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
# \file         initng.mk
# \brief	initng.mk of Embtoolkit
# \author       Averell KINOUANI <averell.kinouani@embtoolkit.org>
# \date         July 2015
################################################################################

INITNG_NAME		:= initng
INITNG_VERSION		:= $(call embtk_get_pkgversion,initng)
INITNG_SITE		:= http://sourceforge.net/projects/initng/files/initng/v0.6/
INITNG_PACKAGE		:= initng-$(INITNG_VERSION).tar.bz2
INITNG_SRC_DIR		:= $(embtk_pkgb)/initng-$(INITNG_VERSION)
INITNG_BUILD_DIR	:= $(embtk_pkgb)/initng-$(INITNG_VERSION)

INITNG_BINS		:= initng
INITNG_LIBS		:= libinitng.*

INITNG_CMAKE_OPTS	:= "SET(CMAKE_SYSTEM_NAME Linux)\n\
			SET(CMAKE_C_COMPILER $(TARGETCC))\n\
			SET(CMAKE_CXX_COMPILER $(TARGETCXX))\n\
			SET(CMAKE_FIND_ROOT_PATH $(embtk_tools))\n\
			SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)\n\
			SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY $(embtk_sysroot)/usr/lib)\n\
			SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE $(embtk_sysroot)/usr/include)\n\
			SET(CMAKE_INSTALL_PREFIX $(embtk_sysroot))\n" 


define embtk_install_initng
	printf $(INITNG_CMAKE_OPTS) >> 	$(INITNG_BUILD_DIR)/CMakeLists.txt; 
	(cd $(INITNG_BUILD_DIR) && cmake . && make && make install)
endef


