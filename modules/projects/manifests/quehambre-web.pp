class projects::quehambre-web {

  package { 'optipng': }

  php::project { 'quehambre-web':
    dir           => "${boxen::config::srcdir}/quehambre/web",
    source        => 'git@github.com:platanus-repos/quehambre.git',
    nginx         => "projects/quehambre/nginx.conf.erb",
    php           => '5.3.23',
  }
}

