class people::iobaixas {

	include virtualbox
	include zsh
	include clipmenu
  	include iterm2::stable

	# Osx config
  	# include people::iobaixas::osx

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
}
