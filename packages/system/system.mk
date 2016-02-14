################################################################################
# Embtoolkit
# Copyright(C) 2010-2014 Abdoulaye Walsimou GAYE.
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
# \file         system.mk
# \brief	system.mk of Embtoolkit
# \author       Abdoulaye Walsimou GAYE <awg@embtoolkit.org>
# \date         July 2010
################################################################################

embtk_pkgincdir := packages/system

# bluez
$(call embtk_include_pkg,bluez)

# dbus
$(call embtk_include_pkg,dbus)

# libftdi
$(call embtk_include_pkg,libftdi)

# libgpg-error
$(call embtk_include_pkg,libgpg-error)

# libusb
$(call embtk_include_pkg,libusb)

# OpenRC
$(call embtk_include_pkg,openrc)

# mtd-utils
$(call embtk_include_pkg,mtdutils)

# initng
$(call embtk_include_pkg, initng)

# libdrm
$(call embtk_include_pkg, libdrm)

# libdrm
$(call embtk_include_pkg, mesa)

# sysfsutils
$(call embtk_include_pkg, sysfsutils)
