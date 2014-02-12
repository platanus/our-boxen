class people::agustinf {

  osx::recovery_message { 'If you find this computer, please reach me at agustin@platan.us Thanks!': }

  include googledrive
  include textual
  include better_touch_tools
  include dropbox
  include iterm2::stable
  include wkhtmltopdf
  include postgresql
  include clipmenu
  include imagemagick



  package { 'pandoc':
    source   => 'https://pandoc.googlecode.com/files/pandoc-1.11.1.dmg',
    provider => 'pkgdmg'
  }

  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

   sublime_text_2::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }


  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  #repository { $dotfiles:
  #  source  => 'agustin/dotfiles',
  #  require => File[$my]
  #}

  #include projects::all
}
