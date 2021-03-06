################################################################################
# Embtoolkit
# Copyright(C) 2009-2013 Abdoulaye Walsimou GAYE.
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
# \file         libevent.mk
# \brief	libevent.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         December 2009
################################################################################

LIBEVENT_NAME		:= libevent
LIBEVENT_VERSION	:= $(call embtk_get_pkgversion,libevent)
LIBEVENT_SITE		:= http://github.com/downloads/libevent/libevent
LIBEVENT_PACKAGE	:= libevent-$(LIBEVENT_VERSION).tar.gz
LIBEVENT_SRC_DIR	:= $(embtk_pkgb)/libevent-$(LIBEVENT_VERSION)
LIBEVENT_BUILD_DIR	:= $(embtk_pkgb)/libevent-$(LIBEVENT_VERSION)

LIBEVENT_BINS		= event_rpcgen.py
LIBEVENT_SBINS		=
LIBEVENT_INCLUDES	= evdns.h event-config.h event.h evhttp.h evrpc.h evutil.h
LIBEVENT_LIBS		= libevent*

