class platanus::environment{

  # Services
  class {'pow':
    domains => 'pow,xip.io',
  }

  # Env
  boxen::env_script { 'platanus':
    content  => template('platanus/env.sh.erb'),
    priority => lowest,
  }

}
