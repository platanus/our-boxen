class projects::quehambre-web {

  include java

  package {
    [
      'optipng',
      'ant'
    ]:
  }

  # Add ant dependencies for publish via ssh
  $ant_lib_path = "/Users/${::boxen_user}/.ant/lib"

  exec { "create ant/lib":
    command => "mkdir -p ${$ant_lib_path}",
    creates => "${$ant_lib_path}",
  }

  exec { "install jsch":
    command => "curl -s -o ${$ant_lib_path}/jsch-0.1.50.jar http://ufpr.dl.sourceforge.net/project/jsch/jsch.jar/0.1.50/jsch-0.1.50.jar",
    creates => "${$ant_lib_path}/jsch-0.1.50.jar",
    onlyif => "test -d ${$ant_lib_path}",
  }

  exec { "install ant-jsch":
    command => "curl -s -o ${$ant_lib_path}/ant-jsch-1.8.2.jar http://repo1.maven.org/maven2/org/apache/ant/ant-jsch/1.8.2/ant-jsch-1.8.2.jar",
    creates => "${$ant_lib_path}/ant-jsch-1.8.2.jar",
    onlyif => "test -d ${$ant_lib_path}",
  }

  php::project { 'quehambre-web':
    dir           => "${boxen::config::srcdir}/quehambre/web",
    source        => 'git@github.com:platanus/quehambre.git',
    nginx         => "projects/quehambre/nginx.conf.erb",
    php           => '5.3.23',
  }
}

