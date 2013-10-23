class people::aarellano {

	include textual
	include zsh
	include tmux
	include better_touch_tools
	include java
	include imagemagick
	include shortcat
	include iterm2::stable
	include clipmenu

  # Osx config
  include people::aarellano::osx

  # Yeoman tools
  nodejs::module { 'yo for v0.10.3':
    module  => 'yo',
    node_version => 'v0.10.3',
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

	sublime_text_2::package { 'Ruby Tests':
		source => 'maltize/sublime-text-2-ruby-tests'
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
}
