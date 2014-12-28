class people::blackjid {

  # Applications
  include zsh
  include iterm2::stable
  include chrome
  include chrome::canary
  include firefox
  include googledrive
  include textual
  include vlc
  include spectacle
  include caffeine
  include dropbox
  include skype
  include vagrant
  include virtualbox
  include sublime_text

  # NPM Packages
  nodejs::module { 'yo for 0.10':
    module  => 'yo',
    node_version => '0.10',
    ensure => '1.1.2'
  }

  nodejs::module { 'coffeelint for 0.10':
    module  => 'coffeelint',
    node_version => '0.10'
  }

  nodejs::module { 'jshint for 0.10':
    module  => 'jshint',
    node_version => '0.10'
  }

  # GEMS
  ruby_gem { 'puppet-lint for all rubies':
    gem          => 'puppet-lint',
    ruby_version => '*'
  }
  
  # Sublime Text
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  $sublime_settings = "${boxen::config::srcdir}/sublime-settings"
  repository { 'Sublime Text Settings':
    source  => 'blackjid/sublime-settings',
    path    => $sublime_settings
  }

  file { "/Users/${::boxen_user}/Library/Application Support/Sublime Text 3/Packages/User":
    ensure  => link,
    force   => true,
    target  => $sublime_settings,
    require => Repository['Sublime Text Settings']
  }

  # Osx config
  include people::blackjid::osx

  # Dotfiles
  include people::blackjid::dotfiles
}
