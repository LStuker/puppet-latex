# Class: latex::params
#
# This class manages parameters for the latex module
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class latex::params{

  case $::osfamily {
    'RedHat': {
      $packages = ['tetex',
                   'tetex-dvips',
                   'tetex-latex'
                  ]
    }
    'Debian': {
      $packages = $::operatingsystem ? {
        'Ubuntu' => $::lsbmajdistrelease ? {
          /^(10|1|12)$/ => [ 'texlive-latex-base',
                             'texlive-latex-recommended',
                             'texlive-latex-extra',
                             'texlive-latex-doc'
                            ],
          default => [ 'texlive-latex-base-doc',
                       'texlive-latex-recommended',
                       'texlive-latex-extra',
                       'texlive-latex-doc'
                      ],
          },
        default => [ 'texlive-latex-base-doc',
                     'texlive-latex-recommended',
                     'texlive-latex-extra',
                     'texlive-latex-doc'
                   ],
      }
    }
    default: {
      warning("Module 'latex' is not currently supported on ${::operatingsystem}")
    }
  }
}