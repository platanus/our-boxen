class platanus::hound::ruby {

  require platanus::hound

  $home = "/Users/${::boxen_user}"

  file { "${home}/.rubocop.yml":
		ensure => link,
		target => "${platanus::hound::path}/config/style_guides/platanus/ruby.yml",
		require => Class[platanus::hound]
	}

  ruby_gem { 'rubocop for all rubies':
    gem          => 'rubocop',
    version      => '0.34.2',
    ruby_version => '*'
  }

}
