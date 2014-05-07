class people::felipecamposclarke {
  include googledrive
  include dropbox
  include postgresql
  include iterm2::stable
  class {'pow':
    domains => 'pow,xip.io',
  }

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  # Yeoman tools
  nodejs::module { 'yo for v0.10.3':
    module  => 'yo',
    node_version => 'v0.10.3',
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
