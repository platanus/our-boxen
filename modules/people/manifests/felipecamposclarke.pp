class people::felipecamposclarke {
  include googledrive
  include textual

  nodejs { 'v0.8.17': }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'felipecamposclarke/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
