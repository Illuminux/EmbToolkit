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
# \file         gst-good.mk
# \brief	gst-good.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         Januar 2016
################################################################################

GST-GOOD_NAME		:= gst-good
GST-GOOD_VERSION	:= $(call embtk_get_pkgversion,gst-good)
GST-GOOD_SITE		:= http://gstreamer.freedesktop.org/src/gst-plugins-good
GST-GOOD_PACKAGE	:= gst-plugins-good-$(GST-GOOD_VERSION).tar.xz
GST-GOOD_SRC_DIR	:= $(embtk_pkgb)/gst-plugins-good-$(GST-GOOD_VERSION)
GST-GOOD_BUILD_DIR	:= $(embtk_pkgb)/gst-plugins-good-$(GST-GOOD_VERSION)

#ifeq ($(embtk_buildhost-macos),y)
GST-GOOD_CONFIGURE_OPTS := --disable-gst_v4l2
#endif

GST-GOOD_BINS		:=
GST-GOOD_INCLUDES	:= gstreamer-0.10/*
GST-GOOD_LIBS		:= gstreamer-0.10/libgst1394.so \
			   gstreamer-0.10/libgstaasink.so \
			   gstreamer-0.10/libgstalaw.so \
			   gstreamer-0.10/libgstalpha.so \
			   gstreamer-0.10/libgstalphacolor.so \
			   gstreamer-0.10/libgstannodex.so \
			   gstreamer-0.10/libgstapetag.so \
			   gstreamer-0.10/libgstaudiofx.so \
			   gstreamer-0.10/libgstaudioparsers.so \
			   gstreamer-0.10/libgstauparse.so \
			   gstreamer-0.10/libgstautodetect.so \
			   gstreamer-0.10/libgstavi.so \
			   gstreamer-0.10/libgstcacasink.so \
			   gstreamer-0.10/libgstcairo.so \
			   gstreamer-0.10/libgstcutter.so \
			   gstreamer-0.10/libgstdebug.so \
			   gstreamer-0.10/libgstdeinterlace.so \
			   gstreamer-0.10/libgstdv.so \
			   gstreamer-0.10/libgstefence.so \
			   gstreamer-0.10/libgsteffectv.so \
			   gstreamer-0.10/libgstequalizer.so \
			   gstreamer-0.10/libgstflac.so \
			   gstreamer-0.10/libgstflv.so \
			   gstreamer-0.10/libgstflxdec.so \
			   gstreamer-0.10/libgstgdkpixbuf.so \
			   gstreamer-0.10/libgstgoom.so \
			   gstreamer-0.10/libgstgoom2k1.so \
			   gstreamer-0.10/libgsticydemux.so \
			   gstreamer-0.10/libgstid3demux.so \
			   gstreamer-0.10/libgstimagefreeze.so \
			   gstreamer-0.10/libgstinterleave.so \
			   gstreamer-0.10/libgstisomp4.so \
			   gstreamer-0.10/libgstjack.so \
			   gstreamer-0.10/libgstjpeg.so \
			   gstreamer-0.10/libgstlevel.so \
			   gstreamer-0.10/libgstmatroska.so \
			   gstreamer-0.10/libgstmonoscope.so \
			   gstreamer-0.10/libgstmulaw.so \
			   gstreamer-0.10/libgstmultifile.so \
			   gstreamer-0.10/libgstmultipart.so \
			   gstreamer-0.10/libgstnavigationtest.so \
			   gstreamer-0.10/libgstoss4audio.so \
			   gstreamer-0.10/libgstossaudio.so \
			   gstreamer-0.10/libgstpng.so \
			   gstreamer-0.10/libgstreplaygain.so \
			   gstreamer-0.10/libgstrtp.so \
			   gstreamer-0.10/libgstrtpmanager.so \
			   gstreamer-0.10/libgstrtsp.so \
			   gstreamer-0.10/libgstshapewipe.so \
			   gstreamer-0.10/libgstshout2.so \
			   gstreamer-0.10/libgstsmpte.so \
			   gstreamer-0.10/libgstsouphttpsrc.so \
			   gstreamer-0.10/libgstspectrum.so \
			   gstreamer-0.10/libgstspeex.so \
			   gstreamer-0.10/libgsttaglib.so \
			   gstreamer-0.10/libgstudp.so \
			   gstreamer-0.10/libgstvideo4linux2.so \
			   gstreamer-0.10/libgstvideobox.so \
			   gstreamer-0.10/libgstvideocrop.so \
			   gstreamer-0.10/libgstvideofilter.so \
			   gstreamer-0.10/libgstvideomixer.so \
			   gstreamer-0.10/libgstwavenc.so \
			   gstreamer-0.10/libgstwavpack.so \
			   gstreamer-0.10/libgstwavparse.so \
			   gstreamer-0.10/libgstximagesrc.so \
			   gstreamer-0.10/libgsty4menc.so

GST-GOOD_DEPS		:= glib_install gstreamer_install 