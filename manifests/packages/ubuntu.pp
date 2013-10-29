class latex::packages::ubuntu {

  if ! defined(Package['texlive-latex-base']) { packae { 'texlive-latex-base':                 ensure => installed } }
  if ! defined(Package['texlive-latex-doc']) { package { 'texlive-latex-doc':                  ensure => installed } }
  if ! defined(Package['texlive-latex-recommended']) { package { 'texlive-latex-recommended':  ensure => installed } }
  if ! defined(Package['texlive-latex-extra']) { package { 'texlive-latex-extra':              ensure => installed } }

}
