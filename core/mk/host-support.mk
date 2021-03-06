################################################################################
# Embtoolkit
# Copyright(C) 2009-2014 Abdoulaye Walsimou GAYE <awg@embtoolkit.org>.
#
# This program is free software; you can distribute it and/or modify it
# under the terms of the GNU General Public License
# (Version 2 or later) published by the Free Software Foundation.
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
# \file         host-support.mk
# \brief	Host support
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         October 2014
################################################################################

#
# Host development machine info
#

CONFIG_EMBTK_SHELL	:=							\
	$(shell									\
	if [ -n "$$(command -v bash 2>/dev/null)" ]; then			\
		echo "$$(command -v bash)";					\
	else									\
		echo "/bin/sh";							\
	fi)

HOST_ARCH		:= $(shell $(CONFIG_EMBTK_SHELL) $(EMBTK_ROOT)/scripts/config.guess)
HOST_BUILD		:= $(HOST_ARCH)
export HOST_ARCH HOST_BUILD

ifeq ($(findstring linux,$(HOST_ARCH)),linux)
embtk_buildhost_os      := linux
embtk_buildhost_os_type := linux
embtk_buildhost-linux   := y
else ifeq ($(findstring freebsd,$(HOST_ARCH)),freebsd)
embtk_buildhost_os      := freebsd
embtk_buildhost_os_type := bsd
embtk_buildhost-freebsd := y
embtk_buildhost-bsd     := y
else ifeq ($(findstring netbsd,$(HOST_ARCH)),netbsd)
embtk_buildhost_os	:= netbsd
embtk_buildhost_os_type := bsd
embtk_buildhost-netbsd  := y
embtk_buildhost-bsd     := y
else ifeq ($(findstring openbsd,$(HOST_ARCH)),openbsd)
embtk_buildhost_os      := openbsd
embtk_buildhost_os_type := bsd
embtk_buildhost-openbsd := y
embtk_buildhost-bsd     := y
else ifeq ($(findstring apple,$(HOST_ARCH)),apple)
embtk_buildhost_os      := macos
embtk_buildhost_os_type := bsd
embtk_buildhost-macos   := y
embtk_buildhost-bsd     := y
else ifeq ($(findstring cygwin,$(HOST_ARCH)),cygwin)
embtk_buildhost_os      := cygwin
embtk_buildhost_os_type := cygwin
embtk_buildhost-cygwin  := y
else
embtk_buildhost_os	:= unknown-host-os
endif

HOSTCC			:=							\
	$(shell									\
	if [ -n "$$(command -v gcc 2>/dev/null)" ]; then			\
		echo "$$(command -v gcc)";					\
	elif [ -n "$$(command -v cc 2>/dev/null)" ]; then			\
		echo "$$(command -v cc)";					\
	else									\
		echo gcc;							\
	fi)

HOSTCXX			:=							\
	$(shell									\
	if [ -n "$$(command -v g++ 2>/dev/null)" ]; then			\
		echo "$$(command -v g++)";					\
	elif [ -n "$$(command -v c++ 2>/dev/null)" ]; then			\
		echo "$$(command -v c++)";					\
	else									\
		echo g++;							\
	fi)

HOSTCFLAGS		= -Wall -O2 -I$(embtk_htools)/usr/include
HOSTCXXFLAGS		= -Wall -O2 -I$(embtk_htools)/usr/include
HOSTLDFLAGS		=

ifeq ($(embtk_buildhost_os),cygwin)
HOSTLDFLAGS		+= -lintl
endif

ifeq ($(embtk_buildhost_os),macos)
HOSTCFLAGS		+= -I/usr/local/opt/gettext/include -I$(embtk_includedir)
HOSTLDFLAGS		+= -L/usr/local/opt/gettext/lib -lintl
endif
HOSTCXXFLAGS		= $(HOSTCFLAGS)

export HOSTCC HOSTCXX HOSTCFLAGS HOSTCXXFLAGS HOSTLDFLAGS

HOSTJAVA		:=							\
	$(shell									\
	if [ -n "$$(command -v java 2>/dev/null)" ]; then			\
		echo "$$(command -v java)";					\
	else									\
		echo java;							\
	fi)

HOSTJAVAC		:=							\
	$(shell									\
	if [ -n "$$(command -v javac 2>/dev/null)" ]; then			\
		echo "$$(command -v javac)";					\
	else									\
		echo javac;							\
	fi)

HOSTJAR			:=							\
	$(shell									\
	if [ -n "$$(command -v jar 2>/dev/null)" ]; then			\
		echo "$$(command -v jar)";					\
	else									\
		echo jar;							\
	fi)
