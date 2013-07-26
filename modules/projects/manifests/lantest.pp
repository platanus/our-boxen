class projects::lantest {

  # Install chromedriver
  package { 'chromedriver': }

  # Install phantomjs
  include phantomjs::1_9_0
  # Couldn't add it globally, tried phantomjs::global { '1.9.0': }

  boxen::project { 'lantest':
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3-p125',
    source        => 'platanus/lanpass-frogo'
  }
}
