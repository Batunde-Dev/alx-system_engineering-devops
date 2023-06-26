# kills a process named killmenow

exec { 'kill_killmenow_process':
  command     => 'pkill killmenow',
  path        => '/usr/bin:/usr/sbin:/bin',
  onlyif      => 'pgrep killmenow',
  refreshonly => true,
}
