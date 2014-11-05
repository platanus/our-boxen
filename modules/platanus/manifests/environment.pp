class platanus::environment{

  # Global versions
  $node_global = '0.10'

  # Node
  class { 'nodejs::global': version => $node_global }

  nodejs::module { "bower for ${node_global}":
    module  => 'bower',
    node_version => $node_global,
    ensure => '~1.3'
  }

  nodejs::module { "grunt-cli for ${node_global}":
    module  => 'grunt-cli',
    node_version => $node_global,
    ensure => '~0.1'
  }

  nodejs::module { "gulp for ${node_global}":
    module  => 'gulp',
    node_version => $node_global,
    ensure => '~3.8'
  }

  nodejs::plugin { 'nodenv-vars':
    ensure => 'master',
    source => 'OiNutter/nodenv-vars'
  }

  # Ruby and gems
  class { 'ruby::global':
    version => '2.0.0'
  }
  ruby::version { '2.1': }
  ruby::version { '1.9.3': }

  $rbenvvars = "${boxen::config::home}/rbenv/plugins"
  file { $rbenvvars:
      ensure => "directory",
  }
  repository { 'rbenv-vars':
    source  => 'sstephenson/rbenv-vars',
    path    => "${$rbenvvars}/rbenv-vars",
    ensure => '3ffc5ce8cee564d3d892223add9548132ae22f8a',
    require => File[$rbenvvars]
  }

  # Gems
  ruby_gem { 'rails for all rubies':
    gem          => 'rails',
    ruby_version => '*'
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }

  ruby_gem { 'negroku for all rubies':
    gem          => 'negroku',
    ruby_version => '*',
    version      => '~> 1.1'
  }

  ruby_gem { 'powder for all rubies':
    gem          => 'powder',
    ruby_version => '*'
  }

  # Services
  include mysql
  include postgresql
  class {'pow':
    domains => 'pow, xip.io',
  }

  # Applications
  include chrome
  include toggl

  # Development Tools
  include sequel_pro
  include pgadmin3
  package { 'chromedriver': }

  # Communication
  include hipchat

}
