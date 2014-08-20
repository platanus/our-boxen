class people::bunzli {
  include virtualbox
  include imagemagick
  include dropbox
  include clipmenu
  include spectacle
  class {'pow':
    domains => 'pow,xip.io',
  }

  # sublime 3
  include sublime_text_3
  include sublime_text_3::package_control

  sublime_text_3::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
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
