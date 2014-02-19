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

  # Yeoman tools
  nodejs::module { 'yo for v0.10.3':
    module  => 'yo',
    node_version => 'v0.10.3',
    ensure => '1.1.2'
  }

  # Osx config
  include people::blackjid::osx

}
