class stacks::android {
  include java
  include android::sdk
  include android::platform_tools

  android::build_tools { '22.0.1': }

  # Install KitKat 4.4
  android::version { '20':
    options => ['platform']
  }

  # Install Lollypop 5.x
  android::version { '22':
    options => ['platform']
  }

  class { 'android::studio':
    release => '1.2.1.1',
    version => '141.1903250',
  }
}
