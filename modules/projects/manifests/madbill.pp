class projects::madbill {
  include platanus::environment

  include java
  include android::sdk
  include android::platform_tools

  android::build_tools { '19.0.2': }

  # Install KitKat 4.4
  android::version { '19':
    options => ['platform', 'add_on']
  }

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
