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
# \file         readline.mk
# \brief		readline.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@googlemail.com>
# \date         December 2015
################################################################################

READLINE_NAME			:= readline
READLINE_VERSION		:= $(call embtk_get_pkgversion,readline)
READLINE_SITE			:= http://ftp.gnu.org/pub/gnu/readline
READLINE_PACKAGE		:= readline-$(READLINE_VERSION).tar.gz
READLINE_SRC_DIR		:= $(embtk_pkgb)/readline-$(READLINE_VERSION)
READLINE_BUILD_DIR		:= $(embtk_pkgb)/readline-$(READLINE_VERSION)-build

READLINE_INCLUDES		:= readline/*
READLINE_LIBS			:= libhistory.* libreadline.*
READLINE_CONFIGURE_OPTS	:= --disable-largefile \
						   --with-curses \
						   bash_cv_wcwidth_broken=yes

READLINE_MAKE_OPTS		:= SHLIB_LIBS=-lncurses

READLINE_DEPS			:= ncurses_install

