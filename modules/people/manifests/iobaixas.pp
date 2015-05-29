class people::iobaixas {

	# Dotfiles

	$home = "/Users/${::boxen_user}"
	$dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

	repository { $dotfiles_dir:
		source => "${::github_login}/dotfiles"
	}

	repository { "${home}/.oh-my-zsh":
		source => "robbyrussell/oh-my-zsh"
	}

	file { "${home}/.zshrc":
		ensure  => link,
		target  => "${dotfiles_dir}/.zshrc",
		require => Repository[$dotfiles_dir]
	}

	file { "${home}/.zshenv":
		ensure  => link,
		target  => "${dotfiles_dir}/.zshenv",
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

	# Sublime text setup, ensure package control is enabled, the other packages are installed
	# via the dotfiles.

	sublime_text::v2::package { 'Package Control':
  		source => 'wbond/sublime_package_control'
  	}

	file { "${home}/Library/Application Support/Sublime Text 2/Packages/User":
		ensure  => link,
		force 	=> true,
		target  => "${dotfiles_dir}/sublime",
		require => Repository[$dotfiles_dir]
	}
}
