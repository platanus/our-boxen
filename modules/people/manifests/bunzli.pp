class people::bunzli {
  include textual
  include spectacle
  include virtualbox
  include googledrive

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'bunzli/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
