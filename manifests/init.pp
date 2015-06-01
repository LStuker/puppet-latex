# Class: latex
#
# This puppet module install latex package
#
# Parameters:
#
#   [*ensure*]
#     Ensure if present or absent.
#     Default: present
#
#   [*autoupgrade*]
#     Upgrade package automatically, if there is a newer version.
#     Default: false
#
#   [*packages*]
#     Name of the package.
#     Only set this, if your platform is not supported or you know,
#     what you're doing.
#     Default: auto-set, platform specific
#
# Examples:
#
#  class { latex:
#  }
#
# Authors:
#
# LStuker <lucien.stuker@gmail.com>
#
# Copyright:
#
# Copyright 2013 Lucien Stuker.
#
class latex (
  $ensure              = 'present',
  $autoupgrade         = false,
  $packages            = $latex::params::packages,
  $package_provider    = $latex::params::package_provider,
) inherits latex::params {

  case $ensure {
    /(present)/: {
      if $autoupgrade == true {
        $package_ensure = 'latest'
      } else {
        $package_ensure = 'present'
      }
    }
    /(absent)/: {
      $package_ensure = 'absent'
    }
    default: {
      fail('ensure parameter must be present or absent')
    }
  }

  package { $packages:
    ensure   => $package_ensure,
    provider => $package_provider,
  }
}
