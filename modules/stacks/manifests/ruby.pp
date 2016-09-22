class stacks::ruby {
  # Ruby and gems
  class { 'ruby::global':
    version => '2.3'
  }
  ruby::version { '2.2': }
  ruby::version { '2.1': }
  ruby::version { '2.0.0': }

  # Gems
  ruby_gem { 'rails for all rubies':
    gem          => 'rails',
    ruby_version => '*'
  }

  ruby_gem { 'bundler for all rubies':
    gem          => 'bundler',
    ruby_version => '*'
  }

  ruby_gem { 'negroku for all rubies':
    gem          => 'negroku',
    ruby_version => '*'
  }

  ruby_gem { 'powder for all rubies':
    gem          => 'powder',
    ruby_version => '*'
  }

  ruby_gem { 'potassium for all rubies':
    gem          => 'potassium',
    ruby_version => '*'
  }

  ruby_gem { 'rubocop for all rubies':
    gem          => 'rubocop',
    ruby_version => '*'
  }

}
