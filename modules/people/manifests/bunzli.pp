class people::bunzli {
  include textual
  include virtualbox
  include googledrive
  include imagemagick
  include postgresql

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'bunzli/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
