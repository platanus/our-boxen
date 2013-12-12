class people::iobaixas {

  include dropbox

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'iobaixas/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
