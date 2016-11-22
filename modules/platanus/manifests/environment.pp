class platanus::environment{

  # Services
  class {'pow':
    domains => 'pow',
    ext_domains => 'xip.io'
  }

  # Env
  boxen::env_script { 'platanus':
    content  => template('platanus/env.sh.erb'),
    priority => lowest,
  }

  homebrew::tap { 'caskroom/fonts': }

}
