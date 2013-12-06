class projects::quehambre-mobile {
  include platanus::environment

  include java
  include android::sdk
  include android::platform_tools

  # Install Froyo 2.2.x
  android::version { '8':
    options => ['platform', 'add_on', 'system_image']
  }

  # Install Icecream Sandwich 4.0.3, 4.0.4
  android::version { '15':
    options => ['platform', 'add_on', 'system_image']
  }

  # Install Gellybean 4.2, 4.2.2
  android::version { '17':
    options => ['platform', 'add_on', 'system_image']
  }

  # Clone the repos
  repository { 'quehambre-angular':
    provider => git,
    source        => 'platanus/quehambre-angular',
    path           => "${boxen::config::srcdir}/quehambre/angular",
    extra    => [
      '--recurse-submodules'
    ],
  }

  repository { 'quehambre-cordova':
    provider => git,
    source        => 'platanus/quehambre-cordova',
    path           => "${boxen::config::srcdir}/quehambre/cordova",
    extra    => [
      '--recurse-submodules'
    ],
  }

  repository { 'quehambre-mobile-web':
    provider => git,
    source        => 'platanus/quehambre-mobile-web',
    path           => "${boxen::config::srcdir}/quehambre/mobile-web",
    extra    => [
      '--recurse-submodules'
    ],
  }

  # Install cordova command line tools
  nodejs::module { 'cordova for ${platanus::environment::node_global}':
    module  => 'cordova',
    node_version => $platanus::environment::node_global,
  }

}
