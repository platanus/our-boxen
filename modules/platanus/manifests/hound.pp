class platanus::hound (
  $path = "${boxen::config::srcdir}/hound",
) {

  # Clone Hound
  repository { $path:
    source  => 'platanus/hound',
    path    => $path
  }

}
