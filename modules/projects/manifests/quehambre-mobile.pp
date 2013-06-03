class projects::quehambre-mobile {
  include java
  include android::sdk
  include android::platform_tools

  # Install Froyo 2.2.x
  android::version { '8':
    options => ['platform', 'add_on', 'system_image']
  }

  # Install Gellybean 4.2.x
  android::version { '17':
    options => ['platform', 'add_on', 'system_image']
  }

  boxen::project { 'quehambre-mobile':
    dir           => "${boxen::config::srcdir}/quehambre/quehambre-mobile",
    source        => 'platanus-repos/quehambre-mobile-alloy'
  }

  # TODO:
  # * Alloy
  # * Titanium SKD
  # * Titanium Studio
}
