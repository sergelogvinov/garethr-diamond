class diamond::service {
  $ensure = $diamond::start ? {true => running, default => stopped}
  service { 'diamond':
    ensure     => $ensure,
    enable     => $diamond::enable,
    hasstatus  => true,
    hasrestart => true,
  }
}

