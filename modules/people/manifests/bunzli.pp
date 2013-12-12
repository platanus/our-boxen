class people::bunzli {
  include virtualbox
  include imagemagick
  include postgresql
  include dropbox

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'bunzli/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
