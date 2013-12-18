class people::bunzli {
  include virtualbox
  include imagemagick
  include postgresql
  include dropbox
  include clipmenu

  package { 'chromedriver': }  
}
