class stacks::android {
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
}
