class people::aarellano {

  osx::recovery_message { 'If you find this computer, please reach me at andres.arellano@gmail.com Thanks!': }

  include textual
  include zsh
  include tmux
  include better_touch_tools
  include imagemagick
  include iterm2::stable
  include clipmenu
  include vlc
  include caffeine

  # Osx config
  include people::aarellano::osx

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  # Yeoman tools
  nodejs::module { 'yo for 0.10.28':
    module  => 'yo',
    node_version => '0.10.28',
  }

  sublime_text_2::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }

  sublime_text_2::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  sublime_text_2::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  }

  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.tmux.conf":
    ensure  => link,
    target  => "${dotfiles_dir}/.tmux.conf",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.gitconfig":
    ensure => link,
    target => "${dotfiles_dir}/.gitconfig",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.aliases":
    ensure => link,
    target => "${dotfiles_dir}/.aliases",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.tmux/rails_env":
    ensure => link,
    target => "${dotfiles_dir}/.tmux/rails_env",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.pythonrc":
    ensure => link,
    target => "${dotfiles_dir}/.pythonrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.railsrc":
    ensure => link,
    target => "${dotfiles_dir}/.railsrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/config":
    ensure => link,
    target => "${dotfiles_dir}/.ssh/config",
    require => Repository[$dotfiles_dir]
  }
}
