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
  class { 'ruby::global': version => '2.0.0' }

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
  include negroku

}
