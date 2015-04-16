class stacks::node {

  class { 'nodejs::global':
    version => '0.10'
  }
  nodejs::version { '0.12': }

  $nodenvvars = "${boxen::config::home}/nodenv/plugins"
  file { $nodenvvars:
      ensure  => "directory",
      require => Class['nodejs::nodenv']
  }
  repository { 'nodenv-vars':
    source  => 'OiNutter/nodenv-vars',
    path    => "${$nodenvvars}/nodenv-vars",
    ensure => 'ee42cd9db3f3fca2a77862ae05a410947c33ba09',
    require => File[$nodenvvars]
  }

  # Node
  npm_module { 'gulp for all nodes':
    module        => 'gulp',
    node_version  => '*',
    version       => '~> 3.8.11'
  }

  npm_module { 'grunt-cli for all nodes':
    module        => 'grunt-cli',
    node_version  => '*',
    version       => '~> 0.1.13'
  }

  npm_module { 'ionic for all nodes':
    module        => 'ionic',
    node_version  => '*',
    version       => '~> 1.3.19'
  }

  npm_module { 'yo for all nodes':
    module        => 'yo',
    node_version  => '*',
    version       => '~> 1.4.6'
  }

  npm_module { 'generator-platanus-ionic for all nodes':
    module        => 'generator-platanus-ionic',
    node_version  => '*',
    version       => '~> 0.0.3'
  }

  npm_module { 'karma-cli for all nodes':
    module        => 'karma-cli',
    node_version  => '*',
    version       => '~> 0.0.4'
  }
}
