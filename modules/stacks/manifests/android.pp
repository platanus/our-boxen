class stacks::android {
  include java
  include android::sdk
  include android::platform_tools

  android::build_tools { '21.0.0': }

  # Install KitKat 4.4
  android::version { '20':
    options => ['platform']
  }

  android::version { '21':
    options => ['platform']
  }

  package { 'android-studio': provider => 'brewcask' }
}
