class people::agustinf {

  include googledrive
  include textual
  include better_touch_tools
  include dropbox
  include iterm2::stable
  include clipmenu
  include wunderlist
  include spotify
  class {'pow':
    domains => 'pow, xip.io',
  }
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

  # Osx config
  include people::agustinf::osx

  # Dotfiles

  $home = "/Users/agustin"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  file { "${home}/.bash_profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.bash_profile",
    require => Repository[$dotfiles_dir]
  }

file { "${home}/.gitconfig":
    ensure  => link,
    target  => "${dotfiles_dir}/.gitconfig",
    require => Repository[$dotfiles_dir]
  }

file { "${home}/.gitignore_global":
    ensure  => link,
    target  => "${dotfiles_dir}/.gitignore_global",
    require => Repository[$dotfiles_dir]
  }

file { "${home}/.negroku":
    ensure  => link,
    target  => "${dotfiles_dir}/.negroku",
    require => Repository[$dotfiles_dir]
  }

file { "${home}/.profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.profile",
    require => Repository[$dotfiles_dir]
  }

file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

  #include projects::all
}
