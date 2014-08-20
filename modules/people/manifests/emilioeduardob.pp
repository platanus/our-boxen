class people::emilioeduardob {
  include textual
  include imagemagick
  include dropbox

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'bunzli/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
