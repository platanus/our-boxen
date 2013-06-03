class projects::camperfarm {
  include java
  include eclipse::java
  include android::sdk
  include android::platform_tools

  # Install Gellybean 4.2.x
  android::version { '17':
    options => ['platform', 'add_on', 'system_image']
  }

  boxen::project { 'bamperfarm wev':
    dir           => "${boxen::config::srcdir}/camperfarm/web",
    source        => 'platanus-repos/camperfarm-web'
  }

  boxen::project { 'Camperfarm android':
    dir           => "${boxen::config::srcdir}/camperfarm/web",
    source        => 'platanus-repos/camperfarm-web'
  }


  # TODO:
  # * Android Eclipse Plugin
}
