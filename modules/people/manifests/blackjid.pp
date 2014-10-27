class people::blackjid {

  # Applications
  include zsh
  include iterm2::stable
  include chrome
  include chrome::canary
  include googledrive
  include textual
  include vlc
  include spectacle
  include caffeine
  include dropbox
  include skype
  include vagrant

  # Yeoman tools
  nodejs::module { 'yo for 0.10':
    module  => 'yo',
    node_version => '0.10',
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

  # Dotfiles
  include people::blackjid::dotfiles
}
