# The kill process for killmenow

exec { 'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
  onlyif   => 'pgrep -x killmenow',
}
