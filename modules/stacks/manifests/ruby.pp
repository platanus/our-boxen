class stacks::ruby {

  # Ruby and gems
  class { 'ruby::global':
    version => '2.0.0'
  }
  ruby::version { '2.2': }
  ruby::version { '2.1': }
  ruby::version { '1.9.3': }

  $rbenvvars = "${boxen::config::home}/rbenv/plugins"
  file { $rbenvvars:
    ensure  => "directory",
    require => Class['ruby::rbenv']
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
    ruby_version => '*'
  }

  ruby_gem { 'powder for all rubies':
    gem          => 'powder',
    ruby_version => '*'
  }

}
