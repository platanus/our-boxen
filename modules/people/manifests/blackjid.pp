class people::blackjid {

  # Applications
  include zsh
  include iterm2::stable
  include chrome::canary
  include googledrive
  include textual
  include skydrive
  include vlc
  include spectacle
  include caffeine
  include dropbox
  include skype
  include pow

  # Yeoman tools
  nodejs::module { 'yo for v0.10.3':
    module  => 'yo',
    node_version => 'v0.10.3',
    ensure => '1.1.2'
  }

  include sublime_text_3
  include sublime_text_3::package_control

  sublime_text_3::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  # Osx config
  include people::blackjid::osx

}
