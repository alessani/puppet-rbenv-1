# == Class: rbenv::deps::debian
#
# This module manages rbenv dependencies for Debian $::osfamily.
#
class rbenv::deps::debian {
  if ! defined(Package['build-essential']) {
    package { 'build-essential': ensure => installed }
  }

  if ! defined(Package['libreadline6-dev']) {
    package { 'libreadline6-dev': ensure => installed }
  }

  include Openssl

  if ! defined(Package['zlib1g-dev']) {
    package { 'zlib1g-dev': ensure => installed }
  }
}
