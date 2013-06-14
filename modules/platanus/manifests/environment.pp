class platanus::environment{

  # Node
  include nodejs::v0_8_8
  include nodejs::v0_10_3
  class { 'nodejs::global': version => 'v0.10.3' }

  # Ruby
  include ruby::1_9_3_p125
  include ruby::1_9_3_p392
  include ruby::2_0_0_p0
  include ruby::2_0_0_p195
  class { 'ruby::global': version => '2.0.0_p195' }

  ruby::plugin { 'rbenv-vars':
    ensure => 'v1.2.0',
    source  => 'sstephenson/rbenv-vars'
  }

  # Services
  include mysql

  # Applications
  include chrome
  include chrome::canary
  include dropbox
  include toggl

  # Development Tools
  include sublime_text_2
  include sequel_pro

  # Communication
  include skype
  include screenhero


  # App deployment
  include heroku

  ruby::gem { 'negroku for 2.0.0-p0':
    gem     => 'negroku',
    ruby    => '2.0.0-p0',
    version => '>=0.0.3'
  }

  ruby::gem { 'negroku for 2.0.0-p195':
    gem     => 'negroku',
    ruby    => '2.0.0-p195',
    version => '>=0.0.3'
  }

  ruby::gem { 'negroku for 2.0.0':
    gem     => 'negroku',
    ruby    => '2.0.0',
    version => '>=0.0.3'
  }

  ruby::gem { 'negroku for 1.9.3-p125':
    gem     => 'negroku',
    ruby    => '1.9.3-p125',
    version => '>=0.0.3'
  }

  ruby::gem { 'negroku for 1.9.3-p392':
    gem     => 'negroku',
    ruby    => '1.9.3-p392',
    version => '>=0.0.3'
  }

  ruby::gem { 'negroku for 1.9.3':
    gem     => 'negroku',
    ruby    => '1.9.3',
    version => '>=0.0.3'
  }
}
