class platanus::environment{

  # Global versions
  $ruby_global = '2.0.0-p195'
  $node_global = 'v0.10.3'

  # Node
  include nodejs::v0_8_8
  include nodejs::v0_10_3
  class { 'nodejs::global': version => $node_global }

  nodejs::module { "bower for ${node_global}":
    module  => 'bower',
    node_version => $node_global,
  }

  # Ruby
  include ruby::1_9_3_p125
  include ruby::1_9_3_p392
  include ruby::2_0_0_p0
  include ruby::2_0_0_p195
  include ruby::2_0_0_p247
  class { 'ruby::global': version => $ruby_global }

  ruby::plugin { 'rbenv-vars':
    ensure => 'v1.2.0',
    source  => 'sstephenson/rbenv-vars'
  }

  # Services
  include mysql

  # Applications
  include chrome
  include chrome::canary
  include firefox
  include dropbox
  include toggl

  # Development Tools
  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }
  include sequel_pro

  # Communication
  include skype
  include screenhero
  include mumble
  include hipchat

  # App deployment
  include heroku
  include negroku

}
