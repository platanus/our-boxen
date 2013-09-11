class projects::vestmed {

  $version = "5.3.23"
  php::project { 'vestmed':
    dir           => "${boxen::config::srcdir}/vestmed/api",
    source        => 'git@github.com:platanus-repos/vestmed-api.git',
    nginx         => "projects/vestmed/nginx.conf.erb",
    php           => $version,
  }

  php::extension::mssql { "mssql for ${version}":
    php     	  => $version,
  }

  php::extension::pdo_dblib { "pdo_dblib for ${version}":
    php     	  => $version,
  }
}

