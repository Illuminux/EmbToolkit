################################################################################
# Embtoolkit
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
# \file         vars.mk
# \brief	vars.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         January 2014
################################################################################

#
# Some helper variables
#
embtk_ftp			:= ftp://ftp.embtoolkit.org/embtoolkit.org
embtk_ftp/packages-mirror	:= $(embtk_ftp)/packages-mirror
embtk_toolchain_use_llvm-y	:= $(or $(CONFIG_EMBTK_LLVM_ONLY_TOOLCHAIN),$(CONFIG_EMBTK_LLVM_DEFAULT_TOOLCHAIN))
embtk_toolchain_has_llvm-y	:= $(or $(CONFIG_EMBTK_GCC_AND_LLVM_TOOLCHAIN),$(embtk_toolchain_use_llvm-y))

#
# Compilers helper macros/variables
#
__embtk_clang-version		= $$($(1) --version 2>/dev/null | sed -e '2,$$d' -e 's/\(.*\) \((.*)\) \((.*)\)/\1/')
__embtk_clang-git-version	= $$($(1) --version 2>/dev/null | sed -e '2,$$d' -e 's/\(.*\) \((.*)\) \((.*)\) \((.*)\)/\1 \4/')
__embtk_gcc-version		= $$($(1) --version 2>/dev/null | sed -e '2,$$d' -e 's/\(.*\)-gcc[[:space:]]\(.*\)/gcc \2/')

__embtk_hostcc-version		:= $(shell $(HOSTCC) --version 2>/dev/null | sed -e '2,$$d')
embtk_hostcc_clang-y		:= $(if $(findstring clang,$(__embtk_hostcc-version)),y)

__embtk_targetclang-v		= $(if $(call __embtk_pkg_usegit,clang),$(call __embtk_clang-git-version,$(TARGETCLANG)),$(call __embtk_clang-version,$(TARGETCLANG)))
embtk_targetcc_name-v		= $(if $(embtk_toolchain_use_llvm-y),$(__embtk_targetclang-v),$(call __embtk_gcc-version,$(TARGETGCC)))

embtk_host_uname		:= $(shell uname -s -r -m)

#
# Get passed package variables prefix and set some helpers macros.
#
PKGV				= $(call embtk_ucase,$(1))
pkgv				= $(call embtk_lcase,$(1))
__embtk_pkg_name		= $(or $(strip $($(PKGV)_NAME)),$(patsubst %_host,%,$(pkgv)))
__embtk_pkg_needpatch		= $(CONFIG_EMBTK_$(PKGV)_NEED_PATCH)
__embtk_pkg_site		= $(strip $($(PKGV)_SITE))
__embtk_patch_site		= $(embtk_ftp)
__embtk_patch_url		= $(__embtk_patch_site)/$(__embtk_pkg_name)/$(__embtk_pkg_version)
__embtk_pkg_patch_site		= $(strip $(or $($(PKGV)_PATCH_SITE),$(__embtk_patch_url)))
__embtk_pkg_patch_f		= $(strip $(embtk_dldir))/$(__embtk_pkg_name)-$(__embtk_pkg_version).patch

___embtk_pkg_mirror             = $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_MIRRORS)) $($(PKGV)_MIRRORS)
__embtk_pkg_mirror		= $(___embtk_pkg_mirror) $(embtk_ftp/packages-mirror)
__embtk_pkg_mirror1		= $(strip $($(PKGV)_MIRROR1))
__embtk_pkg_mirror2		= $(strip $($(PKGV)_MIRROR2))
__embtk_pkg_mirror3		= $(strip $($(PKGV)_MIRROR3))
__embtk_pkg_mirrors             = $(strip $(__embtk_pkg_mirror1) $(__embtk_pkg_mirror2) $(__embtk_pkg_mirror3) $(__embtk_pkg_mirror))
__embtk_pkg_package		= $(strip $($(PKGV)_PACKAGE))
__embtk_pkg_package_remote	= $(or $(strip $($(PKGV)_PACKAGE_REMOTE)),$(__embtk_pkg_package))
__embtk_pkg_tarball_fmt		= $(or $(__embtk_pkg_tarball_targz),\
					$(__embtk_pkg_tarball_tgz),\
					$(__embtk_pkg_tarball_tarbz2),\
					$(__embtk_pkg_tarball_tbz2),\
					$(__embtk_pkg_tarball_tarxz),\
					$(__embtk_pkg_tarball_txz),\
					$(__embtk_pkg_tarball_tar))
__embtk_pkg_tarball_targz	= $(if $(filter %.tar.gz,$(__embtk_pkg_package)),tar.gz)
__embtk_pkg_tarball_tgz		= $(if $(filter %.tgz,$(__embtk_pkg_package)),tgz)
__embtk_pkg_tarball_tarbz2	= $(if $(filter %.tar.bz2,$(__embtk_pkg_package)),tar.bz2)
__embtk_pkg_tarball_tbz2	= $(if $(filter %.tbz2,$(__embtk_pkg_package)),tbz2)
__embtk_pkg_tarball_tarxz	= $(if $(filter %.tar.xz,$(__embtk_pkg_package)),tar.xz)
__embtk_pkg_tarball_txz		= $(if $(filter %.txz,$(__embtk_pkg_package)),txz)
__embtk_pkg_tarball_tar		= $(if $(filter %.tar,$(__embtk_pkg_package)),tar)
__embtk_pkg_md5                 = $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_MD5))
__embtk_pkg_sha1                = $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_SHA1))
__embtk_pkg_sha256              = $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_SHA256))
__embtk_pkg_sha512              = $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_SHA512))

__embtk_pkg_category		= $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_CATEGORY))
# FIXME: drop __embtk_pkg_refspec in favor of __embtk_pkg_category
___embtk_pkg_refspec		= $(call embtk_uquote,$(CONFIG_EMBTK_$(PKGV)_REFSPEC))
__embtk_pkg_refspec		= $(or $(___embtk_pkg_refspec),$(__embtk_pkg_category),$(__embtk_$(pkgv)_category))

__embtk_pkg_usesvn		= $(if $(CONFIG_EMBTK_$(PKGV)_VERSION_SVN),svn)
__embtk_pkg_svnsite		= $(or $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_SVN_SITE)),$(strip $($(PKGV)_SVN_SITE)))
__embtk_pkg_svnbranch		= $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_SVN_BRANCH))
__embtk_pkg_svnrev		= $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_SVN_REVISION))
__embtk_pkg_localsvn		= $(strip $(if $(__embtk_pkg_usesvn),		\
	$(EMBTK_ROOT)/src/$(__embtk_pkg_refspec)/$(__embtk_pkg_name)-$(notdir $(__embtk_pkg_svnbranch)).svn))

__embtk_pkg_usegit		= $(if $(CONFIG_EMBTK_$(PKGV)_VERSION_GIT),git)
__embtk_pkg_gitsite		= $(or $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_GIT_SITE)),$(strip $($(PKGV)_GIT_SITE)))
__embtk_pkg_gitbranch		= $(or $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_GIT_BRANCH)),master)
__embtk_pkg_gitrev		= $(or $(call __embtk_mk_uquote,$(CONFIG_EMBTK_$(PKGV)_GIT_REVISION)),HEAD)
__embtk_pkg_localgit		= $(strip $(if $(__embtk_pkg_usegit),		\
	$(EMBTK_ROOT)/src/$(__embtk_pkg_refspec)/$(__embtk_pkg_name).git))

# FIXME: __embtk_pkg_versionsvn: hack for eglibc, should work just as git
__embtk_pkg_versionsvn		= $(if $(__embtk_pkg_usesvn),$(or $(CONFIG_EMBTK_$(PKGV)_VERSION_STRING),$(__embtk_pkg_usesvn)))
__embtk_pkg_version		= $(or $(__embtk_pkg_usegit),$(__embtk_pkg_versionsvn),$(strip $($(PKGV)_VERSION)))

__embtk_pkg_package_f		= $(strip $(embtk_dldir))/$(__embtk_pkg_package)
__embtk_pkg_srcdir		= $(or $(__embtk_pkg_localgit),$(__embtk_pkg_localsvn),$(patsubst %/,%,$(strip $($(PKGV)_SRC_DIR))))
__embtk_pkg_builddir		= $(patsubst %/,%,$(strip $($(PKGV)_BUILD_DIR)))
__embtk_pkg_nowipeworkspace	= $(strip $($(PKGV)_KEEP_SRC_DIR))
# State dir: where build system stores package states: installed, patched, etc.
__embtk_pkg_x0statedir		= $(if $(__embtk_pkg_builddir),$(dir $(__embtk_pkg_builddir)))
__embtk_pkg_hoststatedir	= $(if $(strip $(wildcard $(embtk_toolsb)/.embtk-$(pkgv))),$(embtk_toolsb))
__embtk_pkg_targetstatedir	= $(if $(strip $(wildcard $(embtk_pkgb)/.embtk-$(pkgv))),$(embtk_pkgb))
__embtk_pkg_gitstatedir		= $(dir $(wildcard $(EMBTK_ROOT)/src/*/$(__embtk_pkg_name).git))
__embtk_pkg_svnstatedir		= $(dir $(wildcard $(EMBTK_ROOT)/src/*/$(__embtk_pkg_name)*.svn))
__embtk_pkg_gitsvnstatedir	= $(or $(__embtk_pkg_gitstatedir),$(__embtk_pkg_svnstatedir))
___embtk_pkg_statedir		= $(or $(__embtk_pkg_x0statedir),$(__embtk_pkg_targetstatedir),$(__embtk_pkg_hoststatedir),$(__embtk_pkg_gitsvnstatedir))
__embtk_pkg_statedir		= $(if $(___embtk_pkg_statedir),$(___embtk_pkg_statedir)/.embtk-$(pkgv))

__embtk_pkg_etc			= $(strip $($(PKGV)_ETC))
__embtk_pkg_bins		= $(strip $($(PKGV)_BINS))
__embtk_pkg_sbins		= $(strip $($(PKGV)_SBINS))
__embtk_pkg_includes		= $(strip $($(PKGV)_INCLUDES))
__embtk_pkg_libs		= $(strip $($(PKGV)_LIBS))
__embtk_pkg_libexecs		= $(strip $($(PKGV)_LIBEXECS))
__embtk_pkg_pkgconfigs		= $(strip $($(PKGV)_PKGCONFIGS))
__embtk_pkg_shares		= $(strip $($(PKGV)_SHARES))

__embtk_pkg_configureenv 	= $(strip $($(PKGV)_CONFIGURE_ENV))
__embtk_pkg_setrpath		= $(strip $($(PKGV)_SET_RPATH))
__embtk_pkg_configureopts	= $(strip $($(PKGV)_CONFIGURE_OPTS))
__embtk_pkg_sysrootsuffix	= $(strip $($(PKGV)_SYSROOT_SUFFIX))
__embtk_pkg_prefix		= $(strip $($(PKGV)_PREFIX))
__embtk_pkg_destdir		= $(strip $($(PKGV)_DESTDIR))
__embtk_pkg_nodestdir		= $(strip $($(PKGV)_NODESTDIR))
__embtk_pkg_deps		= $(strip $($(PKGV)_DEPS))
__embtk_pkg_depspkgv		= $(sort $(patsubst %_install,%,$(__embtk_pkg_deps)))
__embtk_pkg_kconfigsname	= $(patsubst %_HOST,%,$(PKGV))
__embtk_pkg_kconfigs		= $(sort $(filter CONFIG_EMBTK_$(__embtk_pkg_kconfigsname)_%,$(.VARIABLES)))
__embtk_pkg_kconfigs_v		= $(foreach k,$(__embtk_pkg_kconfigs),$(k)=$($(k)))
__embtk_pkg_deps_kconfigs_v	= $(foreach d,$(__embtk_pkg_depspkgv),$(call __embtk_pkg_kconfigs_v,$(d)))
__embtk_pkg_kconfigs_all_v	= $(sort $(strip $(__embtk_pkg_kconfigs_v) $(__embtk_pkg_deps_kconfigs_v)))

__embtk_pkg_cflags		= $(strip $($(PKGV)_CFLAGS))
__embtk_pkg_cppflags		= $(strip $($(PKGV)_CPPFLAGS))
__embtk_pkg_cxxflags		= $(strip $($(PKGV)_CXXFLAGS))
__embtk_pkg_ldflags		= $(strip $($(PKGV)_LDFLAGS))

__embtk_pkg_noccache		= $(CONFIG_EMBTK_$(PKGV)_NOCCACHE)
__embtk_pkg_scanbuild-y		= $(and $(CONFIG_EMBTK_$(PKGV)_USE_SCANBUILD),$(embtk_toolchain_has_llvm-y))
__embtk_pkg_scanbuild		= $(if $(__embtk_pkg_scanbuild-y),$(TARGETSCANBUILD) -o $(__embtk_pkg_srcdir)-scanbuild-results)

__embtk_pkg_makedirs		= $(strip $($(PKGV)_MAKE_DIRS))
__embtk_pkg_makeenv		= $(strip $($(PKGV)_MAKE_ENV))
__embtk_pkg_makeopts		= $(strip $($(PKGV)_MAKE_OPTS))
___embtk_pkg_configuredir	= $(strip $($(PKGV)_CONFIGURE_DIR))
__embtk_pkg_configuredir	= $(if $(___embtk_pkg_configuredir),$(___embtk_pkg_configuredir)/)

__embtk_pkg_usewaf-y		= $(CONFIG_EMBTK_$(PKGV)_USE_WAF)

#
# Variables/macros defined here exported for use externally
#
embtk_pkg_srcdir                = $(__embtk_pkg_srcdir)
embtk_pkg_tarball_fmt		= $(__embtk_pkg_tarball_fmt)
