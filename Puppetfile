# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.10.2"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",   "0.0.6"
github "dnsmasq",    "2.0.1"
github "gcc",        "2.2.0"
github "git",        "2.7.5"
github "homebrew",   "1.12.0"
github "hub",        "1.4.0"
github "inifile",    "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.5"
github "stdlib",     "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "nodejs",     "5.0.0", :repo => "platanus/puppet-nodejs"
github "openssl",    "1.0.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.3.0"
github "ruby",       "8.5.0"
github "stdlib",     "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",                "1.1.8"
github "chrome",                "1.2.0"
github "firefox",               "1.2.3"
github "sublime_text",          "1.0.1"
github "osx",                   "2.7.0"
github "property_list_key",     "0.1.0"
github "zsh",                   "1.0.0"
github "dropbox",               "1.4.1"
github "iterm2",                "1.2.2"
github "skype",                 "1.0.9"
github "toggl",                 "1.0.7"
github "googledrive",           "1.0.2"
github "textual",               "4.2.0"
github "sequel_pro",            "1.0.1"
github "mysql",                 "2.0.1"
github "mongodb",               "2.6.1"
github "vlc",                   "1.1.0"
github "heroku",                "2.1.1"
github "virtualbox",            "1.0.13"
github "vagrant",               "3.0.8"
github "android",               "1.3.0"
github "better_touch_tools",    "3.0.0"
github "tmux",                  "1.0.2"
github "java",                  "1.7.1"
github "imagemagick",           "1.3.0"
github "spectacle",             "1.0.0"
github "phantomjs",             "2.3.0"
github "shortcat",              "1.0.6"
github "clipmenu",              "1.0.0"
github "hipchat",               "1.1.3"
github "docker",                "0.9.0"
github "pow",                   "2.3.0"
github "spotify",               "1.0.2"
github "prezto",                "1.0.1", :repo => "archfear/puppet-prezto"
github "pgadmin3",              "1.0.0"
github "redis",                 "3.1.0"

## PHP module
github "php",                   "1.2.6"
github "wget",                  "1.0.1"
github "libtool",               "1.0.0"
github "pkgconfig",             "1.0.0"
github "pcre",                  "1.0.0"
github "libpng",                "1.0.0"
github "caffeine",              "1.0.0"
github "mumble",                "1.0.5"
github "autoconf",              "1.0.0"

## postgresql
github "sysctl",                "1.0.1"
github "postgresql",            "4.0.1"
github "postgis",               "2.1.7", :repo => "lonelyplanet/puppet-postgis"

#wkhtmltopdf
github "wkhtmltopdf",           "1.2.1"
github "screenhero",            "1.0.1"
