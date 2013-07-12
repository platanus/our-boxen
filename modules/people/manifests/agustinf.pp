class people::agustinf {
  include googledrive
  include textual
  include better_touch_tools

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'agustin/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
