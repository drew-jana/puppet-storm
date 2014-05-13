# Class: storm::supervisor
#
# This module manages storm supervisoration
#
# Parameters: None
#
# Actions: None
#
# Requires: storm::install
#
# Sample Usage: include storm::supervisor
#
class storm::supervisor {
  require storm::install
  include storm::config
  include storm::params

  $storm_supervisor = $::storm::storm_supervisor
  $storm_supervisor_jvm_memory = $::storm::storm_supervisor_jvm_memory

  # Ordering
  Class['storm::install'] ->
  Class['storm::config'] ->
  Class['storm::supervisor'] ~>
  Class['storm::service::supervisor']

  Class['storm::config'] ~>
  Class['storm::service::drpc']

  # Install supervisor /etc/default
  storm::service { 'supervisor':
    start      => 'yes',
    enable     => true,
    jvm_memory => $storm::params::supervisor_mem,
    opts       => $storm::params::supervisor_jvm,
  }

}
