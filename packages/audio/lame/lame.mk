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
# \file         lame.mk
# \brief		lame.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

LAME_NAME			:= lame
LAME_VERSION		:= $(call embtk_get_pkgversion,lame)
LAME_SITE			:= http://downloads.sourceforge.net/project/lame/lame/3.99
LAME_PACKAGE		:= lame-$(LAME_VERSION).tar.gz
LAME_SRC_DIR		:= $(embtk_pkgb)/lame-$(LAME_VERSION)
LAME_BUILD_DIR		:= $(embtk_pkgb)/lame-$(LAME_VERSION)

LAME_BINS			:= lame
LAME_INCLUDES		:= lame.h
LAME_LIBS			:= libmp3lame.*

LAME_CONFIGURE_OPTS	:= --disable-largefile \
					   --disable-gtktest \
					   --disable-frontend
