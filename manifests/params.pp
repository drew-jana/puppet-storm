# Class: storm::params
#
# This module manages storm::params
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class storm::params {

  #_ ZOOKEEPER _#
  $storm_zookeeper_servers            = hiera_array('storm_zookeeper_servers', ['localhost'])
  $storm_zookeeper_port               = hiera('storm_zookeeper_port', '2181')
  $storm_zookeeper_root               = hiera('storm_zookeeper_root', '/storm')
  $storm_zookeeper_session_timeout    = hiera('storm_zookeeper_session_timeout', '20000')
  $storm_zookeeper_retry_times        = hiera('storm_zookeeper_retry_times', '5')
  $storm_zookeeper_retry_interval     = hiera('storm_zookeeper_retry_interval', '1000')
  $storm_cluster_mode                 = hiera('storm_cluster_mode', 'distributed')
  $storm_local_mode_zmq               = hiera('storm_local_mode_zmq', 'false')
  $dev_zookeeper_path                 = hiera('dev_zookeeper_path', '/tmp/dev-storm-zookeeper')

  #_ NIMBUS _#
  $nimbus_mem                       = hiera('nimbus_mem', '1024m')
  $nimbus_host                      = hiera('nimbus_host', 'localhost')
  $nimbus_thrift_port               = hiera('nimbus_thrift_port', '6627')
  $nimbus_childopts                 = hiera('nimbus_childopts', '-Xmx1024m')
  $nimbus_task_timeout_secs         = hiera('nimbus_task_timeout_secs', '30')
  $nimbus_supervisor_timeout_secs   = hiera('nimbus_supervisor_timeout_secs', '60')
  $nimbus_monitor_freq_secs         = hiera('nimbus_monitor_freq_secs', '10')
  $nimbus_cleanup_inbox_freq_secs   = hiera('nimbus_cleanup_inbox_freq_secs', '600')
  $nimbus_inbox_jar_expiration_secs = hiera('nimbus_inbox_jar_expiration_secs', '3600')
  $nimbus_task_launch_secs          = hiera('nimbus_task_launch_secs', '120')
  $nimbus_reassign                  = hiera('nimbus_reassign', 'true')
  $nimbus_file_copy_expiration_secs = hiera('nimbus_file_copy_expiration_secs', '600')
  $nimbus_jvm                       = hiera('nimbus_jvm', ['-Dlog4j.configuration=file:/etc/storm/storm.log.properties', '-Dlogfile.name=nimbus.log'])

  #_ STORM UI _#
  $ui_mem       = hiera('storm_ui_mem', '1024m')
  $ui_port      = hiera('storm_ui_port', '8080')
  $ui_childopts = hiera('storm_ui_childopts', '-Xmx768m')
  $ui_jvm       = hiera('storm_ui_jvm', ['-Dlog4j.configuration=file:/etc/storm/storm.log.properties', '-Dlogfile.name=ui.log'])

  #_ DISTRIBUTED RPC _#
  $drpc_mem                        = hiera('drpc_mem', '1024m')
  $drpc_jvm                        = hiera('drpc_jvm', ['-Dlog4j.configuration=file:/etc/storm/storm.log.properties', '-Dlogfile.name=drpc.log'])
  $drpc_port                       = hiera('drpc_port', '3772')
  $drpc_servers                    = hiera_array('drpc_servers', [''])
  $drpc_invocations_port           = hiera('drpc_invocations_port', '3773')
  $drpc_request_timeout_secs       = hiera('drpc_request_timeout_secs', '600')
  $transactional_zookeeper_root    = hiera('transactional_zookeeper_root', '/transactional')
  $transactional_zookeeper_servers = hiera('transactional_zookeeper_servers', 'null')
  $transactional_zookeeper_port    = hiera('transactional_zookeeper_port', 'null')

  #_ SUPERVISOR _#
  $supervisor_mem                       = hiera('supervisor_mem', '1024m')
  $supervisor_start_port                = hiera('supervisor_slots_start_port', '6700')
  $supervisor_workers                   = hiera('supervisor_workers', '4')
  $supervisor_childopts                 = hiera('supervisor_childopts', '-Xmx1024m')
  $supervisor_worker_start_timeout_secs = hiera('supervisor_worker_start_timeout_secs', '120')
  $supervisor_worker_timeout_secs       = hiera('supervisor_worker_timeout_secs', '30')
  $supervisor_monitor_frequency_secs    = hiera('supervisor_monitor_frequency_secs', '3')
  $supervisor_heartbeat_frequency_secs  = hiera('supervisor_heartbeat_frequency_secs', '5')
  $supervisor_enable                    = hiera('supervisor_enable', 'true')
  $supervisor_jvm                       = hiera('supervisor_jvm', ['-Dlog4j.configuration=file:/etc/storm/storm.log.properties', '-Dlogfile.name=supervisor.log'])

  #_ WORKERS _#
  $worker_childopts                = hiera('worker_childopts', '-Xmx768m')
  $worker_heartbeat_frequency_secs = hiera('worker_heartbeat_frequency_secs', '1')
  $task_heartbeat_frequency_secs   = hiera('task_heartbeat_frequency_secs', '3')
  $task_refresh_poll_secs          = hiera('task_refresh_poll_secs', '10')

  #_ 0MQ _#
  $zmq_threads       = hiera('zmq_threads', '1')
  $zmq_linger_millis = hiera('zmq_linger_millis', '5000')

  #_ TOPOLOGY _#
  $topology_kryo_register                      = hiera_array('topology_kryo.register', [''])
  $topology_debug                              = hiera('topology_debug', 'false')
  $topology_optimize                           = hiera('topology_optimize', 'true')
  $topology_workers                            = hiera('topology_workers', '1')
  $topology_ackers                             = hiera('topology_tasks', '1')
  $topology_message_timeout_secs               = hiera('topology_message_timeout_secs', '30')
  $topology_skip_missing_kryo_registrations    = hiera('topology_skip_missing_kryo_registrations', 'false')
  $topology_max_task_parallelism               = hiera('topology_max_task_parallelism', 'null')
  $topology_max_spout_pending                  = hiera('topology_max_spout_pending', 'null')
  $topology_state_synchronization_timeout_secs = hiera('topology_state_synchronization_timeout_secs', '60')
  $topology_stats_sample_rate                  = hiera('topology_stats_sample_rate', '0.05')
  $topology_fall_back_on_java_serialization    = hiera('topology_fall_back_on_java_serialization', 'true')
  $topology_worker_childopts                   = hiera('topology_worker_childopts', 'null')

}