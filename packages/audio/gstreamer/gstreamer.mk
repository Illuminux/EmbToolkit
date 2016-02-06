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
# \file         gstreamer.mk
# \brief	gstreamer.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

GSTREAMER_NAME		:= gstreamer
GSTREAMER_VERSION		:= $(call embtk_get_pkgversion,gstreamer)
GSTREAMER_SITE		:= http://gstreamer.freedesktop.org/src/gstreamer
GSTREAMER_PACKAGE	:= gstreamer-$(GSTREAMER_VERSION).tar.xz
GSTREAMER_SRC_DIR	:= $(embtk_pkgb)/gstreamer-$(GSTREAMER_VERSION)
GSTREAMER_BUILD_DIR	:= $(embtk_pkgb)/gstreamer-$(GSTREAMER_VERSION)

GSTREAMER_BINS		:= dh_gstscancodecs gst-codec-info-0.10
GSTREAMER_INCLUDES	:= gstreamer-0.10/*
GSTREAMER_LIBS		:= gstreamer-0.10/libgstcoreelements.* \
			   gstreamer-0.10/libgstcoreindexers.* \
			   libgstbase-0.10.* libgstcheck-0.10.* \
			   libgstcontroller-0.10.* libgstdataprotocol-0.10.* \
			   libgstnet-0.10.* libgstreamer-0.10.*
GSTREAMER_PKGCONFIGS	:= gstreamer-0.10.pc gstreamer-base-0.10.pc \
			   gstreamer-check-0.10.pc gstreamer-controller-0.10.pc \
			   gstreamer-dataprotocol-0.10.pc gstreamer-net-0.10.pc

GSTREAMER_CONFIGURE_OPTS := --disable-nls \
			    --disable-examples \
			    --disable-tests  \
			    --enable-profiling \
			    --disable-largefile \
			    --disable-docbook \
			    --disable-gtk-doc \
			    --disable-parsen

GSTREAMER_DEPS		:= glib_install libxml2_install libav_install libx11_install
