class projects::lantest {

  boxen::project { 'lantest':
    mysql         => true,
    nginx         => true,
    ruby          => '1.9.3-p125',
    source        => 'platanus/lanpass-frogo'
  }
}
