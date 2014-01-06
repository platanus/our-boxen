class platanus::environment{

  # Global versions
  $ruby_global = '2.0.0-p195'
  $node_global = 'v0.10.3'

  # Node
  include nodejs::v0_10_3
  class { 'nodejs::global': version => $node_global }

  nodejs::module { "bower for ${node_global}":
    module  => 'bower',
    node_version => $node_global,
  }

  nodejs::module { "grunt-cli for ${node_global}":
    module  => 'grunt-cli',
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
    ensure => '3ffc5ce8cee564d3d892223add9548132ae22f8a',
    source  => 'sstephenson/rbenv-vars'
  }

  # Services
  include mysql
  include postgresql

  # Applications
  include chrome
  include firefox
  include toggl

  # Development Tools
  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }
  include sequel_pro

  # Communication
  include screenhero
  include hipchat

  # App deployment
  include heroku
  include negroku

}
