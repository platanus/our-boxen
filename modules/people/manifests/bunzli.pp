class people::bunzli {
  include virtualbox
  include imagemagick
  include dropbox
  include clipmenu
  include spectacle
  include skype
  include googledrive
  include vlc
  include phantomjs
  include spotify

  # sublime 3
  include sublime_text

  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  sublime_text::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  sublime_text::package { 'GitGutter':
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
