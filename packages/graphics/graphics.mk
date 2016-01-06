################################################################################
# Embtoolkit
# Copyright(C) 2010-2011 Abdoulaye Walsimou GAYE.
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
# \file         graphics.mk
# \brief	graphics.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         February 2010
################################################################################

embtk_pkgincdir := packages/graphics

#atk
$(call embtk_include_pkg,atk)

#Cairo
$(call embtk_include_pkg,cairo)

#DirectFB
$(call embtk_include_pkg,directfb)

#fontconfig
$(call embtk_include_pkg,fontconfig)

#FreeFont
#$(call embtk_include_pkg,freefont_ttf)

#FreeType
$(call embtk_include_pkg,freetype)

#gdk-pixbuf
$(call embtk_include_pkg,gdkpixbuf)

#gstreamer+
$(call embtk_include_pkg,gstreamer)

#gtk+
$(call embtk_include_pkg,gtk)

#imlib2
$(call embtk_include_pkg,imlib2)

#libav
$(call embtk_include_pkg,libav)

#libjasper
$(call embtk_include_pkg,libjasper)

#libjpeg
$(call embtk_include_pkg,libjpeg)

#libjpeg-turbo
#$(call embtk_include_pkg,libjpeg-turbo)

# liblcms2
$(call embtk_include_pkg,liblcms2)

#libpng
$(call embtk_include_pkg,libpng)

#libtiff
$(call embtk_include_pkg,libtiff)

#Pango
$(call embtk_include_pkg,pango)

#libtheora
$(call embtk_include_pkg,libtheora)

#pixman
$(call embtk_include_pkg,pixman)

# x264
$(call embtk_include_pkg,x264)
