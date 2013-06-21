class people::aarellano {

	include textual
	include zsh

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
