class people::camiparot {
  include googledrive

  include sublime_text::v2
  sublime_text::v2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }
}

