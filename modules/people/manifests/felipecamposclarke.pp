class people::felipecamposclarke {
  include googledrive
  include dropbox
  include iterm2::stable

  include sublime_text::v2
  sublime_text::v2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  # Yeoman tools
  nodejs::module { 'yo for 0.10':
    module  => 'yo',
    node_version => '0.10',
  }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'felipecamposclarke/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
