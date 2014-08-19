class people::ldlsegovia {

  # Applications
  include virtualbox
  include clipmenu
  include zsh
  include prezto
  include iterm2::stable
  include chrome::beta
  include chrome::canary
  include vlc
  include spectacle
  include caffeine
  include skype
  class {'pow':
    domains => 'pow,xip.io',
  }

  include sublime_text_3
  include sublime_text_3::package_control

  sublime_text_3::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  sublime_text_3::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  # Osx config
  include people::ldlsegovia::osx
}
