class people::camiparot {
  include googledrive

  include sublime_text_2
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }

  class {'pow':
    domains => 'pow,xip.io',
  }
}

