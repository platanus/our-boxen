require boxen::environment
require homebrew
require gcc

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $luser,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::luser}"
  ]
}

File {
  group => 'staff',
  owner => $luser
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => Class['git']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  # core modules, needed for most things
  include dnsmasq
  include git
  include hub
  include nginx

  # fail if FDE is not enabled
  #if $::root_encrypted == 'no' {
  #  fail('Please enable full disk encryption and try again')
  #}

  # include some provided versions
  include nodejs::v0_10
  include nodejs::v0_8_8

  # install any arbitrary nodejs version
  nodejs { 'v0.10.1': }

  class { 'nodejs::global': version => 'v0.10.0' }

  # install some npm modules
  # Yeoman tools
  nodejs::module { 'yo for v0.10':
    module  => 'yo',
    node_version => 'v0.10',
  }
  nodejs::module { 'grunt-cli for v0.10':
    module  => 'grunt-cli',
    node_version => 'v0.10',
  }
  nodejs::module { 'bower for v0.10':
    module  => 'bower',
    node_version => 'v0.10',
  }

  # default ruby versions
  include ruby::1_9_3
  include ruby::2_0_0

  class { 'ruby::global': version => '2.0.0' }

  # Utils
  include chrome
  include chrome::canary
  include sublime_text_2
  include dropbox
  include skype
  include toggl

  # common, useful packages
  package {
    [
      'ack',
      'findutils',
      'gnu-tar'
    ]:
  }

  ruby::gem { 'negroku for 1.9.3':
    gem     => 'negroku',
    ruby    => '1.9.3',
    version => '~> 0.0.3'
  }

  file { "${boxen::config::srcdir}/our-boxen":
    ensure => link,
    target => $boxen::config::repodir
  }
}
