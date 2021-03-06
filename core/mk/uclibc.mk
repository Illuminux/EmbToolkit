################################################################################
# Embtoolkit
# Copyright(C) 2009-2014 Abdoulaye Walsimou GAYE.
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
# \file         uclibc.mk
# \brief	uclibc.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         August 2009
################################################################################

UCLIBC_NAME		:= uClibc
UCLIBC_VERSION		:= $(call embtk_get_pkgversion,uClibc)
UCLIBC_SITE		:= http://www.uclibc.org/downloads
UCLIBC_GIT_SITE		:= git://git.busybox.net/uClibc
UCLIBC_PACKAGE		:= uClibc-$(UCLIBC_VERSION).tar.bz2
UCLIBC_SRC_DIR		:= $(embtk_toolsb)/uClibc-$(UCLIBC_VERSION)
UCLIBC_BUILD_DIR	:= $(call __embtk_pkg_srcdir,uClibc)

UCLIBC_HEADERS_NAME		:= uClibc
UCLIBC_HEADERS_VERSION		:= $(UCLIBC_VERSION)
UCLIBC_HEADERS_SITE		:= $(UCLIBC_SITE)
UCLIBC_HEADERS_GIT_SITE		:= $(UCLIBC_GIT_SITE)
UCLIBC_HEADERS_PACKAGE		:= $(UCLIBC_PACKAGE)
UCLIBC_HEADERS_SRC_DIR		:= $(UCLIBC_SRC_DIR)
UCLIBC_HEADERS_BUILD_DIR	:= $(UCLIBC_BUILD_DIR)
UCLIBC_HEADERS_KCONFIGS_NAME	:= UCLIBC
UCLIBC_HEADERS_KEEP_SRC_DIR	:= y

UCLIBC_DOTCONFIG	:= $(UCLIBC_BUILD_DIR)/.config
EMBTK_UCLIBC_CFLAGS	:= $(filter-out $(__clang_cflags),$(TARGET_CFLAGS))
EMBTK_UCLIBC_CFLAGS	+= $(EMBTK_TARGET_MCPU)
EMBTK_UCLIBC_CFLAGS	+= $(EMBTK_TARGET_ABI) $(EMBTK_TARGET_FLOAT_CFLAGS)
EMBTK_UCLIBC_CFLAGS	+= $(EMBTK_TARGET_MARCH) -pipe

#
# uClibc libraries make options.
#
UCLIBC_MAKE_OPTS	:= PREFIX="$(embtk_sysroot)/"
UCLIBC_MAKE_OPTS	+= CROSS_COMPILER_PREFIX="$(CROSS_COMPILE)"
UCLIBC_MAKE_OPTS	+= MULTILIB_DIR="/$(LIBDIR)/"
UCLIBC_MAKE_OPTS	+= RUNTIME_PREFIX="/" DEVEL_PREFIX="/usr/"
UCLIBC_MAKE_OPTS	+= KERNEL_HEADERS="$(embtk_sysroot)/usr/include/"
UCLIBC_MAKE_OPTS	+= UCLIBC_EXTRA_CFLAGS="$(EMBTK_UCLIBC_CFLAGS)"
UCLIBC_MAKE_OPTS	+= HOSTCC="$(HOSTCC)"

# FIXME: unset incorrect variables in uClibc (mainline) Rules.mak for MIPS
ifeq ($(CONFIG_EMBTK_ARCH_MIPS),y)
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_1=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_2=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_3=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_4=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_MIPS32=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_MIPS32R2=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_ISA_MIPS64=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_N64_ABI=""
UCLIBC_MAKE_OPTS	+= CONFIG_MIPS_N32_ABI=""
endif

ifeq ($(embtk_buildhost_os),macos)
define embtk_beforeinstall_uclibc
	cp $(EMBTK_ROOT)/scripts/unifdef.c \
		$(UCLIBC_BUILD_DIR)/extra/scripts/unifdef.c
endef
endif

#
# Install dummy uClibc needed to build gcc stage 2
#
define __embtk_install_uclibc_dummy
	$(TARGETGCC) -nostdlib -nostartfiles -shared -x c /dev/null		\
				-o $(embtk_sysroot)/$(LIBDIR)/libc.so.0
	echo '/* GNU ld script - Dummy uClibc linker script. */'		\
		> $(embtk_sysroot)/usr/$(LIBDIR)/libc.so
	$(TARGETGCC) -Wl,--verbose 2>&1 | sed -n '/OUTPUT_FORMAT/,/)/p'		\
		>> $(embtk_sysroot)/usr/$(LIBDIR)/libc.so
	echo 'GROUP(AS_NEEDED(libc.so.0))'					\
		>> $(embtk_sysroot)/usr/$(LIBDIR)/libc.so
endef

#
# uClibc libraries install
#
define embtk_install_uclibc
	$(call embtk_makeinstall_pkg,uclibc)
endef

#
# Uclibc headers install
#
define __embtk_install_uclibc_headers
	$(MAKE) -C $(UCLIBC_BUILD_DIR) distclean
	$(embtk_configure_uclibc)
	$(MAKE) -C $(UCLIBC_BUILD_DIR) $(UCLIBC_MAKE_OPTS) silentoldconfig
	$(MAKE) -C $(UCLIBC_BUILD_DIR) $(UCLIBC_MAKE_OPTS) install_headers
	$(MAKE) -C $(UCLIBC_BUILD_DIR) $(UCLIBC_MAKE_OPTS) install_startfiles
	$(__embtk_install_uclibc_dummy)
endef

define embtk_install_uclibc_headers
	$(embtk_beforeinstall_uclibc)
	$(__embtk_install_uclibc_headers)
endef

#
# Clean up macros
#
define __embtk_cleanup_uclibc
	$(MAKE) -C $(UCLIBC_BUILD_DIR) distclean &&				\
	$(call __embtk_unsetinstalled_pkg,uclibc) &&				\
	$(call __embtk_unsetinstalled_pkg,uclibc_headers)
endef
define embtk_cleanup_uclibc
	[ -e $(UCLIBC_BUILD_DIR)/Makefile ] && $(__embtk_cleanup_uclibc) ||:
endef

define embtk_cleanup_uclibc_headers
	$(embtk_cleanup_uclibc)
endef

#
# uClibc configuration macros and target
#
__embtk_get_uclibc_config=grep "CONFIG_KEMBTK_UCLIBC_" $(EMBTK_DOTCONFIG)
__embtk_set_uclibc_config=sed -e 's/CONFIG_KEMBTK_UCLIBC_*//g' > $(UCLIBC_DOTCONFIG)
define embtk_configure_uclibc
	$(call embtk_pinfo,"Configure uClibc")
	$(__embtk_get_uclibc_config) | $(__embtk_set_uclibc_config)
endef

#
# downloads
#
download_uclibc download_uclibc_headers:
	$(call embtk_download_pkg,uclibc)
