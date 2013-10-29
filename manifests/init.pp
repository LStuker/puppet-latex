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
  case $operatingsystem {
    Ubuntu,Debian: { require latex::packages::ubuntu }
    RedHat,CentOS: { require latex::packages::centos }
  }
}
