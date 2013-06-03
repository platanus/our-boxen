class projects::peepoltv {

  # Peepoltv Web
  repository { 'Peepoltv web':
    source   => 'peepoltv/peepoltv-web',
    path	 => "${boxen::config::srcdir}/peepoltv/web",
    provider => 'git',
	}

  # Peepoltv API
  include imagemagick

  repository { 'Peepoltv API':
    source   => 'peepoltv/peepoltv-api',
    path	 => "${boxen::config::srcdir}/peepoltv/api",
    provider => 'git',
	}

  # Streaming server (lynckia)
  include virtualbox
  include vagrant

  repository { 'Peepoltv Streaming Server':
    source    => 'peepoltv/streaming-server',
    path	 		=> "${boxen::config::srcdir}/peepoltv/streaming-server",
    provider 	=> 'git',
	}

}
