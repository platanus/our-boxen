class people::agustinf {
  include googledrive

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'agustin/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
