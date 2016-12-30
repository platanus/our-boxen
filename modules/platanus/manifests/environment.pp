class platanus::environment{

  # Env
  boxen::env_script { 'platanus':
    content  => template('platanus/env.sh.erb'),
    priority => lowest,
  }

  homebrew::tap { 'caskroom/fonts': }

}
