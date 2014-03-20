class projects::deenty {

  # Ensure postgresql is installed
  # and create a deenty and deenty_test databases
  postgresql::db { 'deenty': }
  postgresql::db { 'deenty_test': }


  # Clone the repository
  repository { 'deenty':
    provider => git,
    path     => "${boxen::config::srcdir}/deenty",
    source   => 'platanus/deenty',
  }
}
