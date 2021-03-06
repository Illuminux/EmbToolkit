################################################################################
# EmbToolkit
# Copyright(C) 2009-2015 Abdoulaye Walsimou GAYE.
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
# \file         Makefile
# \brief	root Makefile of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         May 2009
################################################################################
VERSION			:= 1
PATCHLEVEL		:= 9
SUBLEVEL		:= 0
EXTRAVERSION		:=
EMBTK_VERSION		:= 							\
	$(shell									\
	dversion=$(VERSION).$(PATCHLEVEL).$(SUBLEVEL)$(EXTRAVERSION);		\
	if [ -e .git ]; then							\
		version=$$(scripts/setlocalversion .);				\
		if [ "x$$version" = "x" ]; then					\
			echo $$dversion;					\
		else								\
			echo $$dversion-$$version;				\
		fi;								\
	else echo $$dversion; fi)
EMBTK_BUGURL		:= "http://bugs.embtoolkit.org/projects/embtoolkit"
EMBTK_HOMEURL		:= "http://www.embtoolkit.org"

EMBTK_ROOT		:= $(shell pwd)
EMBTK_DOTCONFIG 	:= "$(EMBTK_ROOT)/.config"

include core/mk/host-support.mk

ifeq ($(V),)
Q := @
MAKEFLAGS += --no-print-directory --silent
else
Q :=
endif
export Q

#
# Include our config if any
#
-include .config

EMBTK_BUILD := $(if $(CONFIG_EMBTK_DOTCONFIG),startbuild,xconfig)

All: $(EMBTK_BUILD)

#
# Performance hack
#
MAKEFLAGS += --no-builtin-rules --no-builtin-variables -Wno-format-security
.SUFFIXES:
	MAKEFLAGS += --no-builtin-rules --no-builtin-variables

SUFFIXES :=

%: %,v
%: RCS/%,v
%: RCS/%
%: s.%
%: SCCS/s.%
%.mk: ;
%.kconfig: ;

#
# Build system makefiles
#

include core/mk/macros.mk
include core/mk/targetsys.mk
include core/mk/target-mcu.mk
include core/mk/buildsystem.mk
include core/toolchain/toolchain.mk
include core/mk/packages.mk
include core/mk/rootfs/rootfs.mk
include core/mk/help.mk
