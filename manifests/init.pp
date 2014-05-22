# == Class: latex
#
# This puppet module install latex package
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { latex:
#  }
#
# === Authors
#
# LStuker <lucien.stuker@gmail.com>
#
# === Copyright
#
# Copyright 2013 Lucien Stuker.
#
class latex {
  # Install Packages
  case $osfamily {
    debian: { require latex::packages::ubuntu }
    redhat: { require latex::packages::centos }
    suse:   { require latex::packages::suse }
  }
}
