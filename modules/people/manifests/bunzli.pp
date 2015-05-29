class people::bunzli {

  nodejs::module { 'coffeelint for 0.10':
    module  => 'coffeelint',
    node_version => '0.10'
  }

  nodejs::module { 'jshint for 0.10':
    module  => 'jshint',
    node_version => '0.10'
  }

  # Sublime Text
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  $sublime_settings = "${boxen::config::srcdir}/sublime-settings"
  repository { 'Sublime Text Settings':
    source  => 'bunzli/sublime-settings',
    path    => $sublime_settings
  }

  file { "/Users/${::boxen_user}/Library/Application Support/Sublime Text 3/Packages/User":
    ensure  => link,
    force   => true,
    target  => $sublime_settings,
    require => Repository['Sublime Text Settings']
  }

  $home     = "/Users/${::luser}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

}
