class people::blackjid {
  include zsh
  include iterm2::stable
  include googledrive

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'blackjid/dotfiles',
  #  require => File[$my]
  #}

  include projects::all
}
