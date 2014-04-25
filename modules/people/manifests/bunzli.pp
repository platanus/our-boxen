class people::bunzli {
  include virtualbox
  include imagemagick
  include postgresql
  include dropbox
  include clipmenu
  include spectacle
  class {'pow':
    domains => 'pow, xip.io',
  }

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
