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
# \file         curl.mk
# \brief		curl.mk of Embtoolkit
# \author       Knut Welzel <knut.welzel@t-online.de>
# \date         December 2015
################################################################################

CURL_NAME			:= curl
CURL_VERSION		:= $(call embtk_get_pkgversion,curl)
CURL_SITE			:= http://curl.haxx.se/download
CURL_PACKAGE		:= curl-$(CURL_VERSION).tar.gz
CURL_SRC_DIR		:= $(embtk_pkgb)/curl-$(CURL_VERSION)
CURL_BUILD_DIR		:= $(embtk_pkgb)/curl-$(CURL_VERSION)

CURL_BINS			:= curl
CURL_INCLUDES		:= curl/*
CURL_LIBS			:= libcurl.*
CURL_PKGCONFIGS		:= libcurl.pc

CURL_DEPS		:= zlib_install openssl_install libssh_install
