class people::ldlsegovia {

  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  sublime_text::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  sublime_text::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }
}
