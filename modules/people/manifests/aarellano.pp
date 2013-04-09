class people::aarellano {

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'aarellano/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
