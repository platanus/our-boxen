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
  include sublime_text

  # Yeoman tools
  nodejs::module { 'yo for 0.10':
    module  => 'yo',
    node_version => '0.10',
    ensure => '1.1.2'
  }

  # Sublime Text
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  # Osx config
  include people::blackjid::osx

  # Dotfiles
  include people::blackjid::dotfiles
}
