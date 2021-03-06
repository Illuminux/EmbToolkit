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
# \file         lua.mk
# \brief	lua.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         June 2010
################################################################################

LUA_NAME	:= lua
LUA_VERSION	:= $(call embtk_get_pkgversion,lua)
LUA_SITE	:= http://www.lua.org/ftp
LUA_PACKAGE	:= lua-$(LUA_VERSION).tar.gz
LUA_SRC_DIR	:= $(embtk_pkgb)/lua-$(LUA_VERSION)
LUA_BUILD_DIR	:= $(embtk_pkgb)/lua-$(LUA_VERSION)

LUA_BINS	:= lua luac
LUA_SBINS	:=
LUA_INCLUDES	:= lauxlib.h luaconf.h lua.h lua.hpp lualib.h
LUA_LIBS	:= lua liblua.*
LUA_PKGCONFIGS	:= lua.pc
LUA_SHARES	:= lua

LUACONF_H_OPTS	:= -DCONFIG_LUA_ROOT="/usr/" -DCONFIG_SYSTEM_LIBDIR="$(LIBDIR)/"
LUACONF_H_OPTS	+= -DLUA_USE_DLOPEN -DLUA_USE_MKSTEMP -DLUA_USE_ULONGJMP
LUACONF_H_OPTS	+= -DLUA_USE_POPEN -DLUA_USE_ISATTY

LUA_MAKE_OPTS	:= INSTALL_TOP=$(embtk_sysroot)/usr/ LIBDIR=$(LIBDIR) PLAT=ansi
LUA_MAKE_OPTS	+= CC=$(TARGETCC_CACHED)
LUA_MAKE_OPTS	+= AR="$(TARGETAR) rcu" RANLIB=$(TARGETRANLIB)
LUA_MAKE_OPTS	+= LDFLAGS="-L$(embtk_sysroot)/$(LIBDIR) -L$(embtk_sysroot)/usr/$(LIBDIR)"
LUA_MAKE_OPTS	+= CFLAGS="$(TARGET_CFLAGS) -I$(embtk_sysroot)/usr/include $(LUACONF_H_OPTS) -fPIC -DPIC"

define embtk_install_lua
	$(call embtk_makeinstall_pkg,lua)
endef

define embtk_postinstall_lua
	$(Q)mkdir -p $(embtk_rootfs)
	$(Q)mkdir -p $(embtk_rootfs)/usr
	$(Q)mkdir -p $(embtk_rootfs)/usr/$(LIBDIR)
	$(Q)mkdir -p $(embtk_rootfs)/usr/share
	$(Q)cp -R $(embtk_sysroot)/usr/$(LIBDIR)/lua $(embtk_rootfs)/usr/$(LIBDIR)/
	$(Q)cp -R $(embtk_sysroot)/usr/share/lua $(embtk_rootfs)/usr/share/
endef
