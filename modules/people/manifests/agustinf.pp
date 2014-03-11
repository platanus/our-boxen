class people::agustinf {

  include googledrive
  include textual
  include better_touch_tools
  include dropbox
  include iterm2::stable
  include postgresql
  include clipmenu
  include wunderlist

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

  # Osx config
  include people::agustinf::osx

  # Dotfiles
  include people::agustinf::dotfiles

  #include projects::all
}
