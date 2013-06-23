class people::aarellano {

	include textual
	include zsh
	include better_touch_tools

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

	sublime_text_2::package { 'TrailingSpaces':
		source => 'SublimeText/TrailingSpaces'
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

	exec {"osx-settings":
		command => "/opt/boxen/homebrew/bin/zsh ${dotfiles_dir}/.osx-settings.sh"
	}
}
