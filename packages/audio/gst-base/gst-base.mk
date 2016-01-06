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
# \file         gst-base.mk
# \brief	gst-base.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

GST-BASE_NAME		:= gst-base
GST-BASE_VERSION	:= $(call embtk_get_pkgversion,gst-base)
GST-BASE_SITE		:= http://gstreamer.freedesktop.org/src/gst-plugins-base
GST-BASE_PACKAGE	:= gst-plugins-base-$(GST-BASE_VERSION).tar.xz
GST-BASE_SRC_DIR	:= $(embtk_pkgb)/gst-plugins-base-$(GST-BASE_VERSION)
GST-BASE_BUILD_DIR	:= $(embtk_pkgb)/gst-plugins-base-$(GST-BASE_VERSION)

GST-BASE_BINS		:=
GST-BASE_INCLUDES	:= gstreamer-0.10/*
GST-BASE_LIBS		:= libgstapp-0.10.* libgstaudio-0.10.* \
			   libgstcdda-0.10.* libgstfft-0.10.* \
			   libgstinterfaces-0.10.* libgstnetbuffer-0.10.* \
			   libgstpbutils-0.10.* libgstriff-0.10.* \
			   libgstrtp-0.10.* libgstrtsp-0.10.* \
			   libgstsdp-0.10.*  libgsttag-0.10.* \
			   libgstvideo-0.10.*
GST-BASE_PKGCONFIGS	:= gstreamer-app-0.10.pc gstreamer-audio-0.10.pc \
			   gstreamer-cdda-0.10.pc gstreamer-fft-0.10.pc \
			   gstreamer-floatcast-0.10.pc \
			   gstreamer-interfaces-0.10.pc \
			   gstreamer-netbuffer-0.10.pc \
			   gstreamer-pbutils-0.10.pc \
			   gstreamer-plugins-base-0.10.pc \
			   gstreamer-riff-0.10.pc gstreamer-rtp-0.10.pc \
			   gstreamer-rtsp-0.10.pc gstreamer-sdp-0.10.pc \
			   gstreamer-tag-0.10.pc  gstreamer-video-0.10.pc

GST-BASE_CONFIGURE_OPTS	:= --disable-nls \
			   --disable-examples \
			   --disable-largefile \
			   --disable-gtk-doc \
			   --disable-app

GST-BASE_DEPS		:= glib_install gstreamer_install liborc_install \
			   libvisual_install zlib_install libxml2_install
