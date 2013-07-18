class people::blackjid {

  # Applications
  include zsh
  include iterm2::stable
  include googledrive
  include textual
  include skydrive
  include vlc
  include spectacle

  # Yeoman tools
  nodejs::module { 'yo for v0.10.3':
    module  => 'yo',
    node_version => 'v0.10.3',
  }

}
