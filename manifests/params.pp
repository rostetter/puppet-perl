# Class: perl::params
#
# This class defines default parameters used by the main module class perl
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to perl class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class perl::params {

  ### Application related parameters
  $cpan_mirror = 'http://www.perl.com/CPAN/'

  ### OS specific parameters
  case $::osfamily {
    'Debian' : {
      $package          = 'perl'
      $doc_package      = 'perl-doc'
      $cpan_package     = 'perl'
      $package_prefix   = 'lib'
      $package_suffix   = '-perl'
      $package_downcase = true
    }

    'RedHat' : {
      $package          = 'perl'
      $doc_package      = ''
      $cpan_package     = 'perl-CPAN'
      $package_prefix   = 'perl-'
      $package_suffix   = ''
      $package_downcase = false
    }

    default : {
      $package          = 'perl'
      $doc_package      = 'perl-doc'
      $cpan_package     = 'perl'
      $package_prefix   = 'perl-'
      $package_suffix   = ''
      $package_downcase = false
    }
  }

  ### General Settings
  $my_class = ''
  $version = 'present'
  $doc_version = 'present'
  $cpan_version = 'present'
  $absent = false
  $module_hash = {}
  $cpan_module_hash = {}

}
