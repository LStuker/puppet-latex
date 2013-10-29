class latex::packages::centos {

  if ! defined(Package['tetex']) { packae { 'tetex':                 ensure => installed } }
  if ! defined(Package['tetex-dvips']) { package { 'tetex-dvips':                  ensure => installed } }
  if ! defined(Package['tetex-latex']) { package { 'tetex-latex':  ensure => installed } }

}
