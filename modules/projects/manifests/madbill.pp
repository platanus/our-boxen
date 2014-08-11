class projects::madbill {
  include platanus::environment

  include java
  include android::sdk
  include android::platform_tools
  # include android::studio
  class { 'android::studio':
    release => '0.8.0',
    version => '135.1245622',
  }

  android::build_tools { '20.0.0': }

  # Install KitKat 4.4
  android::version { '20':
    options => ['platform', 'system_image']
  }


  include eclipse::java
  # Clone the repos
  repository { 'madbill-mobile':
    provider => git,
    source        => 'platanus/madbill-mobile',
    path           => "${boxen::config::srcdir}/madbill/mobile",
  }

  repository { 'madbill':
    provider => git,
    source        => 'platanus/madbill',
    path           => "${boxen::config::srcdir}/madbill/api",
  }

  # Install cordova command line tools
  nodejs::module { 'cordova for ${platanus::environment::node_global}':
    module  => 'cordova',
    node_version => $platanus::environment::node_global,
  }
}
