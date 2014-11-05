class people::bunzli::dotfiles {

  # Personal dotfiles
  $dotfiles = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles:
    source  => 'bunzli/dotfiles',
    extra   => [
      '--recurse-submodules'
    ],
  }

  # Platanus dotfiles
  $platanus_dotfiles = "${boxen::config::srcdir}/platanus/dotfiles"

  repository { $platanus_dotfiles:
    source  => 'platanus/dotfiles',
    path    => $platanus_dotfiles
  }

  # Install thoughtbot's rcm to manage the dotfiles
  homebrew::tap { 'thoughtbot/formulae': }

  package { 'rcm':
    ensure   => 'latest',
    provider => 'homebrew',
  }

  # Include the gitconfig.global in the boxen generated gitconfig
  git::config::global { 'include.path':
    value => '~/.gitconfig.global',
  }

  # Install my platanus and personal dotfiles with rcm
  exec { "install dotfiles":
    command => "rcup -d $platanus_dotfiles -d $dotfiles -x README.md -x LICENSE -x Brewfile",
    require => Package['rcm']
  }
}
