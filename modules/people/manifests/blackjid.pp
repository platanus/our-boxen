class people::blackjid {

  # GEMS
  ruby_gem { 'puppet-lint for all rubies':
    gem          => 'puppet-lint',
    ruby_version => '*'
  }
  
}
